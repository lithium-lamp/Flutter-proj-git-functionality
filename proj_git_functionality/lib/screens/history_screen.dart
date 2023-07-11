import 'package:flutter/cupertino.dart';
import '/widgets/app_layout.dart';
import '/widgets/history_widget.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppLayout(
      title: 'History',
      child: Stack(
        children: [
          HistoryWidget(
              key: Key('widget2'), adress: 'someoadress', date: '02-02-02', vehicle: 'theirvehicle'),
        ],
      ),
    );
  }
}
