import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 64,
              backgroundImage: AssetImage('assets/profilepicture.jpg'),
            ),
            SizedBox(height: 16),
            Text(
              'John Doe',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Software Engineer',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('johndoe@example.com'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('123-456-7890'),
            ),
          ],
        ),
      ),
    );
  }
}