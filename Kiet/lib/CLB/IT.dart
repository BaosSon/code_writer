import 'package:flutter/material.dart';

class IT extends StatelessWidget {
  final ValueNotifier<int> currentPageIndex;

  IT({required this.currentPageIndex});

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
        title: Text('IT'),
      ),
      body: Center(child: Text('LOL'),)
    );
  }
}
