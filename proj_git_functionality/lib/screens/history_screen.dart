import 'package:flutter/cupertino.dart';
import '/widgets/app_layout.dart';
import '/widgets/history_widget.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return const AppLayout(
      title: 'Home',
      child: Column(
        children: [
          HistoryWidget(key: Key('history1'), adress: 'Applegarden street 3B', date: '02-05-23 12:45', vehicle: 'Volvo XC60'),
          HistoryWidget(key: Key('history2'), adress: 'Jury street 13B', date: '30-08-23 18:00', vehicle: 'Rolls Royce Ghost'),
          HistoryWidget(key: Key('history3'), adress: 'Pea street 23B', date: '12-10-23 10:30', vehicle: 'Volvo XC60'),
        ],
      ),
    );
  }
}
