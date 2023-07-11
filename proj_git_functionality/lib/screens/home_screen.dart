import 'package:flutter/cupertino.dart';
import '/widgets/app_layout.dart';
import '/widgets/history_widget.dart';
import '/widgets/actionchip.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      title: 'Home',
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: CupertinoColors.systemBlue,
              child: const Center(
                child: CustomActionChip(key: Key('myvehicle1'), icon: LineIcons.car, title: 'Volvo xc60', text: 'XYZ123')
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: CupertinoColors.systemGreen,
              child: const Center(
                child: CustomActionChip(key: Key('vehicle1'), icon: LineIcons.car, title: 'Volvo xc60', text: 'XYZ123')
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: CupertinoColors.systemOrange,
              child: const Center(
                child: HistoryWidget(key: Key('main1'), adress: 'myadresses', date: '02-02-23', vehicle: 'mydcar')
              ),
            ),
          ),
        ],
      ),
    );
  }
}
