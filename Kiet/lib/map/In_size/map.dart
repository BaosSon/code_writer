import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../theme/theme.dart';
import '../style_map.dart';

class school_map extends StatelessWidget {
  final ValueNotifier<int> currentPageIndex;
  school_map({required this.currentPageIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              currentPageIndex.value = 0;
            },
          ),
          title: Text('Map')),
      body: ListView(
        children: <Widget>[
          InteractiveViewer(
            boundaryMargin: EdgeInsets.all(20.0),
            minScale: 0.1,
            maxScale: 5,
            child: Image.asset('image/map.jpg'),
          )
        ],
      ),
    );
  }
}
