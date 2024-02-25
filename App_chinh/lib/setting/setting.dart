import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settings extends ChangeNotifier {
  bool isDarkTheme = false;
  double fontSize = 14.0;

  void toggleTheme(bool val) {
    isDarkTheme = val;
    notifyListeners();
  }

  void adjustFontSize(double val) {
    fontSize = val;
    notifyListeners();
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settings = Provider.of<Settings>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: ListView(
        children: [
          SwitchListTile(title: Text('Dark Theme'), value: settings.isDarkTheme, onChanged: settings.toggleTheme, activeColor:Color.fromARGB(255, 0, 183, 255),),
          ListTile(title: Text('Contact Us'), onTap: () {}),
        ],
      ),
    );
  }
}
