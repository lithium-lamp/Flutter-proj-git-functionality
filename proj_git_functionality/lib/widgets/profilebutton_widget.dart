import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icons.dart';

class ProfilebuttonWidget extends StatelessWidget {
  final IconData icon;
  final String title;

  const ProfilebuttonWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle action chip tap
        // Add your functionality here
      },
      child: CupertinoListSection.insetGrouped(
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 20,
                color: CupertinoColors.activeGreen,
              ),
              Text(title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.systemGrey,
                )
              ),
              const Icon(
                LineIcons.angleRight,
                size: 20,
                color: CupertinoColors.inactiveGray,
              ),
            ],
          )
        ],
      ),
    );
  }
}