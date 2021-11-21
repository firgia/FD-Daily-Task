import 'package:daily_task/app/constans/app_constants.dart';
import 'package:flutter/material.dart';

class UserProfileData {
  final ImageProvider image;
  final String name;
  final String jobDesk;

  const UserProfileData({
    required this.image,
    required this.name,
    required this.jobDesk,
  });
}

class UserProfile extends StatelessWidget {
  const UserProfile({
    required this.data,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final UserProfileData data;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(kBorderRadius),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              _buildImage(),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildName(),
                    _buildJobdesk(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    return CircleAvatar(
      radius: 25,
      backgroundImage: data.image,
    );
  }

  Widget _buildName() {
    return Text(
      data.name,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: kFontColorPallets[0],
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildJobdesk() {
    return Text(
      data.jobDesk,
      style: TextStyle(
        fontWeight: FontWeight.w300,
        color: kFontColorPallets[1],
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
