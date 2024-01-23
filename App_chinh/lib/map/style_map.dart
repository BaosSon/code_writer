import 'package:flutter/material.dart';
import '../theme/theme.dart';

class bd extends StatelessWidget {
  final Widget child;
  bd({required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(1),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: AspectRatio(
          aspectRatio: 1/1,
          child: FittedBox(
            child: child,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class Logo extends StatelessWidget {
  final String imagePath;
  Logo({required this.imagePath});
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width / 2;
    return Container(
      width: Width,
      height: Width,
      child: Image.asset(imagePath),
    );
  }
}

// -----
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
                  child: ThemeText(text: 'Mô tả: ' + description, size: 18.0),
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
