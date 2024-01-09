import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'style_appbar.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 0, 183, 255),
      // leading: IconButton(
      //   tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      //   icon: const Icon(Icons.menu),
      //   color: Colors.white,
      //   onPressed: () {},
      // ),
      title: const Text(
        'Sổ tay sinh viên',
        style: ab_text,
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search),
          tooltip: 'Search',
          color: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
