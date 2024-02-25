import 'package:flutter/material.dart';
import '../theme/theme.dart';
import 'note.dart';
import 'face.dart';
import '../map/MAP.dart';
import 'check_out.dart';
import 'note2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Widget _body;
  @override
  void initState() {
    super.initState();
    _body = buildHome();
  }

  Widget buildHome() {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 200,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/school.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,),
          delegate: SliverChildListDelegate(
            [
              OptionCard(
                icon: Icons.facebook,
                card_text: ThemeText(text: 'Website & facebook', size: 20, align:TextAlign.center,),
                color: Colors.blueAccent,
                onTap: () => setState(() => _body = face(goHome: goHome)),
              ),
              OptionCard(
                icon: Icons.info,
                card_text: ThemeText(text: 'Cần lưu ý', size: 20,align:TextAlign.center,),
                color: hex('#F2C200'),
                onTap: () => setState(() => _body = Note(goHome: goHome)),
              ),
              OptionCard(
                icon: Icons.propane_tank,
                card_text: ThemeText(text: 'Chuẩn đầu ra', size: 20,align:TextAlign.center,),
                color: hex('#4CAF50'),
                onTap: () => setState(() => _body = check_out(goHome: goHome)),
              ),
              OptionCard(
                icon: Icons.note,
                card_text: ThemeText(text: 'Những điều khác', size: 20,align:TextAlign.center,),
                color: hex('#F44336'),
                onTap: () => setState(() => _body = Note2(goHome: goHome)),
              ),
            ],
          ),
        ),
      ],
    );
  }
  void goHome() {
    setState(() => _body = buildHome());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) =>
            ScaleTransition(child: child, scale: animation),
        child: _body,
      ),
    );
  }
}

