import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../setting/setting.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('sổ tay sinh viên'),
              accountEmail: Text('Trường đại học thủ dầu một')),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Seting'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage())),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Thoát'),
            onTap: () => _showExitConfirmationDialog(context),
          )
        ],
      ),
    );
  }
  void _showExitConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Xác nhận thoát',style: TextStyle(color: Colors.lightBlueAccent,fontWeight: FontWeight.bold),),
          content: const Text('Bạn có chắc chắn muốn thoát ứng dụng?',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.blueAccent ),),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(), // Đóng hộp thoại
              child: const Text('Hủy'),
            ),
            TextButton(
              onPressed: () {
                SystemNavigator.pop(); // Thoát ứng dụng
              },
              child: const Text('Thoát'),
            ),
          ],
        );
      },
    );
  }}
