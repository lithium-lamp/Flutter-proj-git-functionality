import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
import '/widgets/app_layout.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      title: 'Settings',
      child: ListView(
        children: [
          CupertinoFormSection(
            header: const Text('Notifications'),
            children: [
              CupertinoFormRow(
                prefix: const Text('Push Notifications'),
                child: CupertinoSwitch(
                  value: true,
                  onChanged: (value) {
                    // Handle switch value change
                  },
                ),
              ),
            ],
          ),
          CupertinoFormSection(
            header: const Text('Appearance'),
            children: [
              CupertinoFormRow(
                prefix: const Text('Dark Mode'),
                child: CupertinoSwitch(
                  value: false,
                  onChanged: (value) {
                    // Handle switch value change
                  },
                ),
              ),
            ],
          ),
          CupertinoFormSection(
            header: const Text('Language'),
            children: const [
              CupertinoFormRow(
                prefix: Text('Language'),
                
                child: Text('English'),
              ),
            ],
          ),
          CupertinoButton(
            onPressed: () {
              // Handle sign out action
            },
            color: CupertinoColors.systemRed,
            child: const Text('Sign Out'),
          ),
        ],
      ),
    );
  }
}