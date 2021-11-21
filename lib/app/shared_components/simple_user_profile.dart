import 'package:daily_task/app/constans/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:daily_task/app/utils/helpers/app_helpers.dart';

class SimpleUserProfile extends StatelessWidget {
  const SimpleUserProfile({
    required this.name,
    required this.color,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final String name;
  final Color color;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: _buildAvatar(),
      title: _buildName(),
    );
  }

  Widget _buildAvatar() {
    return CircleAvatar(
      radius: 15,
      backgroundColor: color.withOpacity(.2),
      child: Text(
        name.getInitialName(2).toUpperCase(),
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 12,
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
        fontSize: 12,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
