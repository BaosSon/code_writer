import 'package:flutter/material.dart';
import 'style_appbar.dart';
// import 'style_appbar.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: nope(
      child: Text(
        'LOL',
        style: ab_text,
      ),
    ));
  }
}
