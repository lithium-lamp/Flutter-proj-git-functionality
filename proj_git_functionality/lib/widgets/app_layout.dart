import 'package:flutter/cupertino.dart';

class AppLayout extends StatelessWidget {
  final String title;
  final Widget child;

  const AppLayout({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(title), backgroundColor: const Color.fromARGB(255, 180, 212, 179),
      ),
      child: SafeArea(
        child: child,
      ),
    );
  }
}