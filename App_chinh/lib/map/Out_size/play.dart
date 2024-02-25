import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../theme/theme.dart';
import '../style_map.dart';

class Play extends StatelessWidget {
  final ValueNotifier<int> currentPageIndex;
  Play ({required this.currentPageIndex});

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
          title: Text('Play')),
      body: ListView(
        children: <Widget>[
          button_List(
            title: 'Siêu thị',
            description: '?',
            imageUrl: 'image/logo.jpg',
            mapUrl: '',
          ),
          // -----
          button_List(
            title: 'Nhà sách Bình Minh',
            description: 'Ngoài sách ra còn nhiều thứ khác',
            imageUrl: 'image/logo.jpg',
            mapUrl: '',
          ),
          // -----
          button_List(
            title: 'Nhà cũ',
            description: 'Chắc ông hiểu ý tôi là gì :)',
            imageUrl: 'image/logo.jpg',
            mapUrl: '',
          ),
          // -----
        ],
      ),
    );
  }
}
