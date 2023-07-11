import 'package:flutter/cupertino.dart';

class VehicleWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String text;

  const VehicleWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle action chip tap
        // Add your functionality here
      },
      child: CupertinoListSection.insetGrouped(
        //padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 50,
                  color: CupertinoColors.activeGreen,
                ),
                Column(
                  children: [
                    Text(title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.activeGreen,
                      )
                    ),
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 20,
                        color: CupertinoColors.systemGrey,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
