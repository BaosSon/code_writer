import 'package:flutter/material.dart';
import '../theme/theme.dart';

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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: AspectRatio(
          aspectRatio: 1/1,
          child: FittedBox(
            child: child,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class Logo extends StatelessWidget {
  final String imagePath;
  Logo({required this.imagePath});
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width / 2;
    return Container(
      width: Width,
      height: Width,
      child: Image.asset(imagePath),
    );
  }
}
