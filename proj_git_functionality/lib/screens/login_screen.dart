import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
import '/widgets/app_layout.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      title: 'Login',
      child: ListView(
        children: const [
          Text(
              'This is the Login, which is quite empty right now',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
        ],
      ),
    );
  }
}