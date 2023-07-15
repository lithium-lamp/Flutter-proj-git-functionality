import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        backgroundColor:const Color.fromARGB(0, 0, 0, 0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 239, 239, 239),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
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
