import 'package:flutter/material.dart';

class Literature extends StatelessWidget {
  final ValueNotifier<int> currentPageIndex;

  Literature({required this.currentPageIndex});

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
        title: Text('Literature'),
      ),
      body: Center(child: Text('LOL'),)
    );
  }
}
