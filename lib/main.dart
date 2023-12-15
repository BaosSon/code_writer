import 'package:flutter/material.dart';
import 'package:untitled/appbar/appbar.dart';
import 'package:untitled/navigation/bottom.dart';
import 'style.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
              appBar: AppBar(
                  title:MyAppBar()),
              body: MyBody(),
              bottomNavigationBar: MyBottomNavigationBar(),
          );
        },
      ),
    );
  }
}


class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('This is the body',style:lol);
  }
}

