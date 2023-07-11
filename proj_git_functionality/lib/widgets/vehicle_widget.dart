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
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 50,
                  color: CupertinoColors.activeGreen,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Text(title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CupertinoColors.systemGrey,
                        )
                      ),
                      Text(
                        text,
                        style: const TextStyle(
                          fontSize: 20,
                          color: CupertinoColors.systemGrey2,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
