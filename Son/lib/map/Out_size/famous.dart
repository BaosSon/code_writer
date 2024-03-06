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
          // Logo
          Center(child: bd(child: Logo(imagePath: 'image/logo.jpg'))),

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
            subtitle: Text('Contact number'),
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
            child:ThemeText(text:'Short introduction', size: 20),
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

