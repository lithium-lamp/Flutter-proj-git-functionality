import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
import '/widgets/app_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      title: 'Home',
      child: ListView(
        children: const [
          Text(
              'This is the homescreen, which is quite empty right now',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
        ],
      ),
    );
  }
}