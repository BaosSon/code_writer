import 'package:flutter/material.dart';
import '../setting/setting.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('sổ tay sinh viên'),
              accountEmail: Text('Trường đại học thủ dầu một')),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Seting'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage())),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Thoát'),
            onTap: () => print("tapped"),
          )
        ],
      ),
    );
  }
}
