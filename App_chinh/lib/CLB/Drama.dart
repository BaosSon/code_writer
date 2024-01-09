import 'package:flutter/material.dart';
import 'style_CLB.dart';
class Drama extends StatelessWidget {
  final ValueNotifier<int> currentPageIndex;

  Drama({required this.currentPageIndex});

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
          title: Text('Drama')),
      body: ListView(
        children: <Widget>[
          // Logo
          Center(child:bd(child:Logo(imagePath: 'image/logo.png'))),

          // Facebook
          ListTile(
            leading: Icon(Icons.facebook),
            title: Text('Facebook'),
            // onTap: () {
              
            // },
          ),

          // Contact number
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Contact Number'),
            subtitle:
                Text('Contact number'),
          ),

          // Club leader
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Club Leader'),
            subtitle: Text('Name of the club leader'), 
          ),

          // Short introduction
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Short introduction',
              style: TextStyle(fontSize: 20),
            ),
          ),

          // Activities
          ListTile(
            title: Text('Activities'),
            subtitle: Text('Description of activities'), 
          ),

          // Achievements
          ListTile(
            title: Text('Achievements'),
            subtitle: Text('Description of achievements'),
          ),
        ],
      ),
    );
  }
}
