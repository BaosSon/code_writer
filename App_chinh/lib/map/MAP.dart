import 'package:flutter/material.dart';
import 'package:untitled/theme/theme.dart';
import 'style_map.dart';
import 'In_size/list.dart';
import 'Out_size/list.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  final currentPageIndex = ValueNotifier<int>(0);

  List<Widget> get pages => [
        Map_main(currentPageIndex: currentPageIndex),
        eat(currentPageIndex: currentPageIndex),
      ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: currentPageIndex,
      builder: (context, value, child) {
        return Scaffold(
          body: AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return SlideTransition(
                child: child,
                position: animation
                    .drive(Tween(begin: Offset(1.0, 0.0), end: Offset.zero)),
              );
            },
            child: pages[currentPageIndex.value],
          ),
        );
      },
    );
  }
}

class Map_main extends StatelessWidget {
  final ValueNotifier<int> currentPageIndex;
  Map_main({required this.currentPageIndex});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView(children: <Widget>[
      GestureDetector(
        onTap: () => currentPageIndex.value = 1,
        child: Card(
          child: ListTile(
            leading: bd(child: Image.asset('image/logo.jpg')),
            title: Text('Chỗ ăn uống'),
            subtitle: Text('Có thực mới vực được đạo'),
          ),
        ),
      ),
// ------
GestureDetector(
  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => school_map())),
        child: Card(
          child: ListTile(
            leading: bd(child: Image.asset('image/logo.jpg')),
            title: Text('Sơ đồ trường'),
            subtitle: Text('Không thể lạc được'),
          ),
        ),
      ),
// ------
    ]));
  }
}