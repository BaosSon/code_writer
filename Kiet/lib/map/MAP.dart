import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../theme/theme.dart';
import 'place.dart';

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:InteractiveViewer(
      boundaryMargin: EdgeInsets.all(0),
      minScale: 0.1,
      maxScale: 10,
      child: FittedBox(
          child: Image.asset('image/map.jpg'),
          fit: BoxFit.cover,
        ),
    ));
  }
}

