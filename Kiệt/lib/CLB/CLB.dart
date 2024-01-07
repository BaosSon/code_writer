import 'package:flutter/material.dart';
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
          body: pages[value],
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
      leading: Container(
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.all(1),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 1.0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset('../image/logo.png'),
      ),
      title: Text('Câu lập bộ IT'),
      subtitle: Text('Tôi chưa biết nên viết gì ở đây nữa'),
    ),
  ),
),
// ------
      GestureDetector(
  onTap: () => currentPageIndex.value = 2,
  child: Card(
    child: ListTile(
      leading: Container(
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.all(1),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 1.0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset('../image/logo.png'),
      ),
      title: Text('Câu lập bộ Văn học'),
      subtitle: Text('Tôi chưa biết nên viết gì ở đây nữa'),
    ),
  ),
),
// ------
      GestureDetector(
  onTap: () => currentPageIndex.value = 3,
  child: Card(
    child: ListTile(
      leading: Container(
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.all(1),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 1.0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset('../image/logo.png'),
      ),
      title: Text('Câu lập bộ Kịch'),
      subtitle: Text('Tôi chưa biết nên viết gì ở đây nữa'),
    ),
  ),
),
// ------
    ]);
  }
}
