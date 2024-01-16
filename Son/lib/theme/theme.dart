import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../setting/setting.dart';

final ThemeData Light = ThemeData(
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

final ThemeData Dark = ThemeData(
  brightness: Brightness.dark,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

class ThemeText extends StatelessWidget {
  final String text;
  ThemeText({required this.text});

  @override
  Widget build(BuildContext context) {
    var settings = Provider.of<Settings>(context);
    TextStyle textStyle = TextStyle(
      fontSize: settings.fontSize,
      color: Theme.of(context).colorScheme.onSurface,
    );

    return Text(text, style: textStyle);
  }
}