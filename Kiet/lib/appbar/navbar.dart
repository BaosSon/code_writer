import 'package:flutter/material.dart';

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
            leading: const Icon(Icons.ac_unit_sharp),
            title: const Text('Seting'),
            onTap: () => print("tapped"),
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
