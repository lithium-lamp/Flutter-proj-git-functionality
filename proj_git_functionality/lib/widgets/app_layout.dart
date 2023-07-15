import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icons.dart';

class AppLayout extends StatelessWidget {
  final String title;
  final Widget child;

  const AppLayout({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor:const Color.fromARGB(255, 190, 228, 188),
      navigationBar: CupertinoNavigationBar(
        leading: const Icon(LineIcons.bell),
        middle: Text(
          title,
          style: const TextStyle(
              color: Color.fromARGB(255, 64, 64, 64), fontSize: 20),
        ),
        trailing: const Icon(LineIcons.creditCard),
        backgroundColor: const Color.fromARGB(255, 180, 212, 179),
      ),
      child: SafeArea(
        child: child,
      ),
    );
  }
}
