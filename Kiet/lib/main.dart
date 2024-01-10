import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'appbar/appbar.dart';
import 'package:untitled/navigation/bottom.dart';
import 'Home/home.dart';
import 'map/MAP.dart';
import 'CLB/CLB.dart';
import 'info/info.dart';
import 'appbar/navbar.dart';
import 'setting/setting.dart';
import 'theme/theme.dart';

void main() =>
    runApp(ChangeNotifierProvider(create: (_) => Settings(), child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Settings>(
      builder: (context, settings, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Light.copyWith(
              textTheme:
                  TextTheme(bodyMedium: TextStyle(fontSize: settings.fontSize))),
          darkTheme: Dark.copyWith(
              textTheme:
                  TextTheme(bodyMedium: TextStyle(fontSize: settings.fontSize))),
          themeMode: settings.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
          home: MyHomePage(),
        );
      },
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
      drawer: Navbar(),
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
