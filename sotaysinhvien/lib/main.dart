import 'package:flutter/material.dart';
import 'package:untitled/appbar/appbar.dart';
import 'package:untitled/navigation/bottom.dart';
import 'style.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
              appBar: AppBar(
                  title:const MyAppBar()),
              body: const MyBody(),
              bottomNavigationBar: MyBottomNavigationBar(),
          );
        },
      ),
    );
  }
}


class MyBody extends StatelessWidget {
const MyBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Text('This is the body',style:lol);
  }
}

