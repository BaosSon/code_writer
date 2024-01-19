import 'package:flutter/material.dart';
import '../../theme/theme.dart';

class Note2 extends StatelessWidget {
  final VoidCallback goHome;
  Note2({required this.goHome});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Note2'),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: goHome),
      ),
      body: Text('Note2'),
    );
  }
}
