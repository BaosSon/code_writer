import 'package:flutter/material.dart';
class  Navbar extends StatelessWidget {
  const Navbar ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.ac_unit_sharp),
            title: Text('Seting'),
            onTap: () => print("tapped"),
          )
        ],
      ),
    );
  }
}
