import 'package:flutter/material.dart';

class school_map extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text('Map')),
      body: ListView(
        children: <Widget>[
          InteractiveViewer(
            minScale: 0.1,
            maxScale: 5,
            scaleFactor: 0.5,
            panAxis: PanAxis.free,
            child: Image.asset('image/map.jpg'),
          )
        ],
      ),
    );
  }
}
