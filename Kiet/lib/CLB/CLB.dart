import 'package:flutter/material.dart';
import 'style_CLB.dart';
import 'IT.dart';
import 'Drama.dart';
import 'Literature.dart';

class CLB_show extends StatefulWidget {
  @override
  _CLB_showState createState() => _CLB_showState();
}

class _CLB_showState extends State<CLB_show> {
  final currentPageIndex = ValueNotifier<int>(0);

  List<Widget> get pages => [
        CLB(currentPageIndex: currentPageIndex),
        IT(currentPageIndex: currentPageIndex),
        Literature(currentPageIndex: currentPageIndex),
        Drama(currentPageIndex: currentPageIndex),
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
                position: animation.drive(
                  Tween(begin: Offset(1.0, 0.0), end: Offset.zero)),
              );
            },
            child: pages[currentPageIndex.value],
          ),
        );
      },
    );
  }
}

class CLB extends StatelessWidget {
  final ValueNotifier<int> currentPageIndex;
  CLB({required this.currentPageIndex});
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      GestureDetector(
        onTap: () => currentPageIndex.value = 1,
        child: Card(
          child: ListTile(
            leading: bd(child: Image.asset('image/logo.png')),
            title: Text('Câu lập bộ IT'),
            subtitle: Text('Lập trình cả thế giới'),
          ),
        ),
      ),
// ------
      GestureDetector(
        onTap: () => currentPageIndex.value = 2,
        child: Card(
          child: ListTile(
            leading: bd(child: Image.asset('image/logo.png')),
            title: Text('Câu lập bộ Văn học'),
            subtitle: Text('Chắc chắc không có Monika'),
          ),
        ),
      ),
// ------
      GestureDetector(
        onTap: () => currentPageIndex.value = 3,
        child: Card(
          child: ListTile(
            leading: bd(child: Image.asset('image/logo.png')),
            title: Text('Câu lập bộ Kịch'),
            subtitle: Text('Vì một lá phổi khỏe mạnh, hãy hít drama'),
          ),
        ),
      ),
// ------
    ]);
  }
}
