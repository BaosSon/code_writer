import 'package:flutter/material.dart';
import 'appbar/appbar.dart';
import 'package:untitled/navigation/bottom.dart';
import 'Home/home.dart';
import 'map/MAP.dart';
import 'CLB/CLB.dart';
import 'info/info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    Map(),
    CLB(),
    Info(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
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
