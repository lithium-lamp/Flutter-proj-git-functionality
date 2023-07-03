import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './screens/login_screen.dart';
import './screens/profile_screen.dart';
import './screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      home: HomeScreen(), // Use the HomeScreen class as the home parameter
    );
  }
}