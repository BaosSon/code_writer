import 'package:flutter/material.dart';
import 'package:untitled/appbar/appbar.dart';
import 'package:untitled/navbar.dart';
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
        debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) {
          return Scaffold(
              drawer: Navbar(),
              appBar: AppBar(
                  title:const Text(
                  'Sổ tay sinh viên',
                  style: lol ),
                backgroundColor: Colors.blue),
              body: const MyBody(),
              bottomNavigationBar: const MyBottomNavigationBar(),
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

