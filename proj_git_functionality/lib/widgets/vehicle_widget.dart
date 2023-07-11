import 'package:flutter/cupertino.dart';

class VehicleWidget extends StatelessWidget {
  final String name;
  final String licenseplate;
  final String icon;

  //final Widget child;

  const VehicleWidget({super.key, required this.name, required this.licenseplate, required this.icon});

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection.insetGrouped(
        children: [
              CupertinoListTile(
                title: Text(name),
              ),
              CupertinoListTile(
                title: Text(licenseplate),
                backgroundColor: CupertinoColors.lightBackgroundGray,
              ),
              CupertinoListTile(
                title: Text(icon),
              ),
        ],
      );
  }
}