import 'package:flutter/material.dart';
import 'IT.dart';

class CLB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => IT()),
    );
  },
  child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Container(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 1.0,),
                  borderRadius: BorderRadius.circular(10),),
                child: Image.asset('../image/logo.png'),
              ),
              title: Text('Câu lập bộ IT'),
              subtitle: Text('Tôi chưa biết nên viết gì ở đây nữa'),
            ),
          ],
        ),
      ),
  ),
      
// ------
      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Container(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset('../image/logo.png'),
              ),
              title: Text('Câu lập bộ IT'),
              subtitle: Text('Tôi chưa biết nên viết gì ở đây nữa'),
            ),
          ],
        ),
      ),
//------
      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Container(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset('../image/logo.png'),
              ),
              title: Text('Câu lập bộ IT'),
              subtitle: Text('Tôi chưa biết nên viết gì ở đây nữa'),
            ),
          ],
        ),
      ),
//------
    ]);
  }
}
