import 'package:flutter/cupertino.dart';
import '/widgets/app_layout.dart';
import '/widgets/history_widget.dart';
import '/widgets/vehicle_widget.dart';
import '/widgets/map_widget.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const AppLayout(
      title: 'Home',
      child: Column(
        children: [
          VehicleWidget(key: Key('myvehicle1'), icon: LineIcons.car, title: 'Volvo XC60', text: 'XYZ123'),
          MapWidget(),
          HistoryWidget(key: Key('main1'), adress: 'Applegarden street 13B', date: '02-02-23', vehicle: 'Volvo XC60'),
        ],
      ),
    );
  }
}
