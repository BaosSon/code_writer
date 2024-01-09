import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
              crossAxisCount: 2,
            ),
            delegate: SliverChildListDelegate(
              [
                OptionCard(
                  icon: Icons.info,
                  title: 'Thông tin',
                ),
                OptionCard(
                  icon: Icons.grid_view,
                  title: 'Câu lạc bộ',
                ),
                OptionCard(
                  icon: Icons.location_on,
                  title: 'Địa điểm 1',
                ),
                OptionCard(
                  icon: Icons.location_on,
                  title: 'Địa điểm 2',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const OptionCard({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          // Xử lý khi tuỳ chọn được chọn
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
