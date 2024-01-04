import 'package:flutter/material.dart';
import 'package:untitled/appbar/appbar.dart';
import 'package:untitled/navigation/bottom.dart';
import 'home.dart';
import 'notifications.dart';
import 'MAP.dart';
import 'messages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;

  final pages = [
    HomePage(),
    MAP(),
    MessagesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: MyAppBar()),
      body: pages[currentPageIndex],
      bottomNavigationBar: MyBottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        currentIndex: currentPageIndex,
      ),
    );
  }
}
