import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  final Function(int) onTap;
  final int currentIndex;

  MyBottomNavigationBar({required this.onTap, required this.currentIndex});

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: widget.onTap,
      indicatorColor: Colors.blue,
      selectedIndex: widget.currentIndex,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.map),
          icon: Icon(Icons.map_outlined),
          label: 'Map',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.people),
          icon: Icon(Icons.people_outline),
          label: 'CLB',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.info),
          icon: Icon(Icons.info_outline),
          label: 'Into',
        ),
      ],
    );
  }
}
