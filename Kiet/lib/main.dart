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
  final pageController = PageController();
  final pages = [
    HomePage(),
    Map(),
    CLB_show(),
    Info(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: PageView(
        controller: pageController,
        onPageChanged: (index) => setState(() => currentPageIndex = index),
        children: pages
            .map((page) => Align(alignment: Alignment.topCenter, child: page))
            .toList(),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        onTap: (index) {
          pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        currentIndex: currentPageIndex,
      ),
    );
  }
}
