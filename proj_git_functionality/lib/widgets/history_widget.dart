import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryWidget extends StatelessWidget {
  final String adress;
  final String date;
  final String vehicle;

  //final Widget child;

  const HistoryWidget({super.key, required this.adress, required this.date, required this.vehicle});

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection.insetGrouped(
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
              CupertinoListTile(
                title: const Text('Adress'),
                additionalInfo: Text(adress),
              ),
              CupertinoListTile(
                title: const Text('Date'),
                additionalInfo: Text(date),
                backgroundColor: CupertinoColors.lightBackgroundGray,
              ),
              CupertinoListTile(
                title: const Text('Vehicle'),
                additionalInfo: Text(vehicle),
              ),
              const CupertinoListTile(
                title: Text('Additional information'),
                leading: Icon(CupertinoIcons.add_circled_solid),
                trailing: Icon(CupertinoIcons.chevron_forward),
                backgroundColor: CupertinoColors.lightBackgroundGray,
              ),
        ],
      );
  }
}