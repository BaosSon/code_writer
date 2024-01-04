// import 'package:flutter/material.dart';
// import '../style.dart';
//
// class MyAppBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(title: Text('My App',style: lol),
//       centerTitle: true,
//       backgroundColor: Color.blue,
//       elevation: 0,
//       iconTheme: IconThemeData(
//         color: Color.white,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../style.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
      centerTitle: false,
      backgroundColor: Colors.cyanAccent,
      elevation: 10,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Hành động khi nhấp vào biểu tượng menu
            },
          ),
          const Text(
            'Sổ tay sinh viên',
            style: lol
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Hành động khi nhấp vào biểu tượng tìm kiếm
            },
          ),
        ],
      ),

    );
  }
}
