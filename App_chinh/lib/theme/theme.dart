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

class button_List extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String mapUrl;

  button_List({
    required this.title,
    this.description = '',
    this.imageUrl = '',
    this.mapUrl = '',
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: ThemeText(text: title, size: 20.0),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              if (imageUrl.isNotEmpty)
                Container(
                  width: 200.0,
                  height: 200.0,
                  child: Image.asset(imageUrl, fit: BoxFit.cover),
                ),
              if (description.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: ThemeText(text: description, size: 18.0),
                ),
              if (mapUrl.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(mapUrl),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

// -----
Color hex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}
