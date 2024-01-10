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
          SwitchListTile(title: Text('Dark Theme'), value: settings.isDarkTheme, onChanged: settings.toggleTheme),
          Slider(value: settings.fontSize, min: 14, max: 30, divisions: 6, onChanged: settings.adjustFontSize),
          ListTile(title: Text('Contact Us'), onTap: () {}),
        ],
      ),
    );
  }
}
