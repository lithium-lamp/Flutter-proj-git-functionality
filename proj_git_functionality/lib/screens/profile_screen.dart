import 'package:flutter/cupertino.dart';
import '/widgets/app_layout.dart';
import 'package:line_icons/line_icons.dart';
import '/widgets/profilebutton_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      title: 'Profile',
      child: Column(
        children: [
          const Icon(LineIcons.userCircle, size: 150),
          const SizedBox(height: 30),
            CupertinoButton(
              onPressed: () {},
              color: CupertinoColors.systemBlue,
              child: const Text('Edit profile'),
            ),
          const Padding(padding:EdgeInsets.all(10)),
          const ProfilebuttonWidget(icon: LineIcons.cog, title: 'Settings'),
          const ProfilebuttonWidget(icon: LineIcons.creditCard, title: 'Billing'),
          const Padding(padding:EdgeInsets.all(10)),
            const ProfilebuttonWidget(icon: LineIcons.infoCircle, title: 'Information'),
            const ProfilebuttonWidget(icon: LineIcons.powerOff, title: 'Log out')
          ,
          const SizedBox(height: 30),
            CupertinoButton(
              onPressed: () {},
              color: CupertinoColors.systemRed,
              child: const Text('Enabled'),
            ),
        ],
      ),
    );
  }
}
