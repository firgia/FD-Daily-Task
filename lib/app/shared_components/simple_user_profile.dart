import 'package:daily_task/app/constans/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:daily_task/app/utils/helpers/app_helpers.dart';

class SimpleUserProfile extends StatelessWidget {
  const SimpleUserProfile({
    required this.name,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final String name;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        leading: _buildAvatar(),
        title: _buildName(),
        trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(Icons.more_horiz),
          splashRadius: 24,
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.orange.withOpacity(.2),
      child: Text(
        name.getInitialName(2).toUpperCase(),
        style: const TextStyle(
          color: Colors.orange,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildName() {
    return Text(
      name,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: kFontColorPallets[0],
        fontSize: 13,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
