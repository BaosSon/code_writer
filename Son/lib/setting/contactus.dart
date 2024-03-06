import 'package:flutter/material.dart';
import 'package:untitled/theme/theme.dart';
class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact Us')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SizedBox(height: 16.0),
          ThemeText(text: 'Contact:',size: 18),
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
