import 'package:flutter/cupertino.dart';
import '/widgets/app_layout.dart';
import '/widgets/history_widget.dart';

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
                child: Text(
                  'Container 1',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: CupertinoColors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: CupertinoColors.systemGreen,
              child: const Center(
                child: Text(
                  'Container 2',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: CupertinoColors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: CupertinoColors.systemYellow,
              child: const Center(
                child: Text(
                  'Container 3',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: CupertinoColors.white,
                  ),
                ),
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
          Expanded(
            child: Container(
              color: CupertinoColors.systemPurple,
              child: const Center(
                child: HistoryWidget(key: Key('main'), adress: 'myadress', date: '02-02-23', vehicle: 'mycar')
              ),
            ),
          ),
        ],
      ),
    );
  }
}
