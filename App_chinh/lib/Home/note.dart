import 'package:flutter/material.dart';
import '../../theme/theme.dart';

class Note extends StatelessWidget {
  final VoidCallback goHome;
  Note({required this.goHome});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Note'),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: goHome),
      ),
      body: Text('Note'),
    );
  }
}
