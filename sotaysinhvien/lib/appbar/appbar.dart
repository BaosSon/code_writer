import 'package:flutter/material.dart';
import '../style.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
      centerTitle: false,
      backgroundColor: Colors.cyanAccent,
      elevation: 10,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
            },
          ),
          const Text(
            'Sổ tay sinh viên',
            style: lol
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
            },
          ),
        ],
      ),

    );
  }
}
