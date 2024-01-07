import 'package:flutter/material.dart';

class Drama extends StatelessWidget {
  final ValueNotifier<int> currentPageIndex;

  Drama({required this.currentPageIndex});

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
        title: Text('Drama'),
      ),
      body: Center(child: Text('LOL'),)
    );
  }
}
