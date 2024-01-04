import 'package:flutter/material.dart';
import '../style.dart';
class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(

      centerTitle: true,
      elevation: 10,
      );
  }
}
