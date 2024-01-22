import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../theme/theme.dart';
import '../style_map.dart';

class eat extends StatelessWidget {
  final ValueNotifier<int> currentPageIndex;
  eat({required this.currentPageIndex});

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
          title: Text('Eat')),
      body: ListView(
        children: <Widget>[
          button_List(
            title: 'Con đường cổng 3',
            description: 'Giá rẻ, đa dạng',
            imageUrl: 'image/logo.jpg',
            mapUrl: '',
          ),
          // -----
          button_List(
            title: 'Con đường cổng 4',
            description: 'Có vài quán cơm',
            imageUrl: 'image/logo.jpg',
            mapUrl: '',
          ),
          // -----
          button_List(
            title: 'Cửa hàng tiền lợi',
            description: 'Nên đợi lúc khuyến mãi',
            imageUrl: 'image/logo.jpg',
            mapUrl: '',
          ),
          // -----
        ],
      ),
    );
  }
}
