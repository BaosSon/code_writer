import 'package:flutter/material.dart';
import '../theme/theme.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Center(child: ThemeText(text:'Info'));
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: Icon(Icons.info),
            title: ThemeText1(
              text: 'Sổ tay sinh viên',
            ),
          ),
          SizedBox(height: 16.0),
          ThemeText1(text: 'Mô tả:',),
          ThemeText( text:'Đây là phiên bản thử nghiệm đầu tiên dành cho sinh viên Đại Học Thủ Dầu một',),
          // SizedBox(height: 16.0),
          // Text(
          //   'Key Features:',
          //   style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          // ),
          // ListTile(
          //   leading: Icon(Icons.check),
          //   title: Text('Feature 1'),
          // ),
          // ListTile(
          //   leading: Icon(Icons.check),
          //   title: Text('Feature 2'),
          // ),
          // ListTile(
          //   leading: Icon(Icons.check),
          //   title: Text('Feature 3'),
          // ),
          // SizedBox(height: 16.0),
          // Text(
          //   'Screenshots:',
          //   style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          // ),
          // SizedBox(height: 8.0),
          // SizedBox(height: 16.0),
          // Text(
          //   'System Requirements:',
          //   style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          // ),
          // Text('Android 6.0+'),
          // Text('iOS 10.0+'),
          SizedBox(height: 16.0),
          ThemeText1(
            text: 'Version:',
          ),
          ListTile(
            title: Text('Version 1.0.0'),
            subtitle: Text('Phiên bản đầu tiên'),
          ),
          // ListTile(
          //   title: Text('Version 1.1.0'),
          //   subtitle: Text('Bug fixes and performance improvements'),
          // ),
          // SizedBox(height: 16.0),
          // Text(
          //   'Reviews and Ratings:',
          //   style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          // ),
          // ListTile(
          //   leading: CircleAvatar(child: Text('4.5')),
          //   title: Text('Great app!'),
          //   subtitle: Text('by John Doe'),
          // ),
          // ListTile(
          //   leading: CircleAvatar(child: Text('5.0')),
          //   title: Text('Awesome features!'),
          //   subtitle: Text('by Jane Smith'),
          // ),
          SizedBox(height: 16.0),
          ThemeText1(text: 'Contact and Support:',),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('support@example.com'),
            onTap: () {
              // Handle email contact
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
            subtitle: Text('+1 123-456-7890'),
            onTap: () {
              // Handle phone contact
            },
          ),
        ],
      ),
    );
  }
}

class ThemeText1 extends StatelessWidget {
  final String text;

  const ThemeText1({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.black
            : Colors.white,
      ),
    );
  }
}
