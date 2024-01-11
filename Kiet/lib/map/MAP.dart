import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'A/A1.dart';

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('MAP'));
  }
}

// class Map extends StatelessWidget {
//   final Widget image = Image.asset('image/map.png');
//   final List<Path> paths = <Path>[];

//   Map();

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTapDown: (details) => _onTap(context, details.globalPosition),
//       child: image,
//     );
//   }

//   void _onTap(BuildContext context, Offset globalPosition) {
//     final RenderBox renderBox = context.findRenderObject();
//     final localPosition = renderBox.globalToLocal(globalPosition);
//     for (var i = 0; i < paths.length; i++) {
//       if (paths[i].contains(localPosition)) {
//         onTap(i);
//         return;
//       }
//     }
//   }

//   void onTap(int index) {
//     // Định nghĩa hành động của bạn khi người dùng nhấn vào một đường dẫn ở đây
//   }
// }
