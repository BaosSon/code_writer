import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../theme/theme.dart';
import '../style_map.dart';

class Sport extends StatelessWidget {
  final ValueNotifier<int> currentPageIndex;
  Sport ({required this.currentPageIndex});

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
          title: Text('Sport')),
      body: ListView(
        children: <Widget>[
          button_List(
            title: 'Trung tâm văn hóa Phú Mĩ',
            description: 'Đi học nữa',
            imageUrl: 'image/logo.jpg',
            mapUrl: '',
          ),
          // -----
          button_List(
            title: 'Hồ bơi',
            description: 'Xung quanh anh toàn là nước ê',
            imageUrl: 'image/logo.jpg',
            mapUrl: '',
          ),
          // -----
          button_List(
            title: 'Sân bóng',
            description: 'Chưa rõ lắm',
            imageUrl: 'image/logo.jpg',
            mapUrl: '',
          ),
          // -----
        ],
      ),
    );
  }
}
