import 'package:flutter/material.dart';

class bd extends StatelessWidget {
  final Widget child;
  bd({required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(1),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
