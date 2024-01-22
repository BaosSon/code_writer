import 'package:flutter/material.dart';
import '../../theme/theme.dart';

class face extends StatelessWidget {
  final VoidCallback goHome;
  face({required this.goHome});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('face'),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: goHome),
      ),
      body: Text('face'),
    );
  }
}
