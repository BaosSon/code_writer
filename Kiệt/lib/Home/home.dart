// import 'dart:io';
// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return  Image.asset('../image/school.jpg');
//   }
// }
//import 'dart:io';
import 'package:flutter/material.dart';
import 'package:untitled/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
          const Center(
            child: Text(
              'Chào mừng các bạn đến với sổ tay sinh viên!',
              style: lol,
            ),
          ),
        ],
      ),
    );
  }
}
