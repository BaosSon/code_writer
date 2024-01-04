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
          icon: Badge(child: Icon(Icons.notifications_sharp)),
          label: 'Notifications',
        ),
        NavigationDestination(
          icon: Badge(
            label: Text('2'),
            child: Icon(Icons.messenger_sharp),
          ),
          label: 'Messages',
        ),
      ],
    );
  }
}
