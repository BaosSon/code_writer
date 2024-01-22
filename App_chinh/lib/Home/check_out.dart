import 'package:flutter/material.dart';
import '../../theme/theme.dart';

class check_out extends StatelessWidget {
  final VoidCallback goHome;
  check_out({required this.goHome});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đầu ra'),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: goHome),
      ),
      body: Text('Out'),
    );
  }
}
