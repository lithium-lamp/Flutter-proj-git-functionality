import 'package:flutter/cupertino.dart';
import '/widgets/app_layout.dart';
import '/widgets/history_widget.dart';
import '/widgets/vehicle_widget.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppLayout(
      title: 'Home',
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: VehicleWidget(key: Key('myvehicle1'), icon: LineIcons.car, title: 'Volvo xc60', text: 'XYZ123')
            ),
          ),
          Expanded(
            child: Center(
              child: VehicleWidget(key: Key('vehicle1'), icon: LineIcons.car, title: 'Volvo xc60', text: 'XYZ123')
            ),
          ),
          Expanded(
            child: Center(
              child: HistoryWidget(key: Key('main1'), adress: 'myadresses', date: '02-02-23', vehicle: 'mydcar')
            ),
          ),
        ],
      ),
    );
  }
}
