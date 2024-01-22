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
  final double size;
  final TextAlign align;
  ThemeText({required this.text,required this.size, this.align=TextAlign.left});

  @override
  Widget build(BuildContext context) {
    var settings = Provider.of<Settings>(context);
    TextStyle textStyle = TextStyle(
      fontSize: size,
      color: Theme.of(context).colorScheme.onSurface,
    );

    return Text(text, style: textStyle, textAlign: align,);
  }
}
// -----
class OptionCard extends StatelessWidget {
  final IconData? icon;
  final ThemeText card_text;
  final Color color;
  final VoidCallback? onTap;
  OptionCard({
    this.icon,
    required this.card_text,
    this.color = Colors.white,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,size: 48,),
            card_text
          ],
        ),
      ),
    );
  }
}
