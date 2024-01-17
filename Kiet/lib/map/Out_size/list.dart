import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../style_map.dart';
import '../../theme/theme.dart';

class Out_size extends StatelessWidget {
  final ValueNotifier<int> currentPageIndex;
  Out_size({required this.currentPageIndex});

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
          title: Text('IT')),
      body: ListView(
        children: <Widget>[
          ListTile(
            title:Text('Out'),
            )
        ],
      ),
    );
  }
}
