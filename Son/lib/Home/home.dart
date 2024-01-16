import 'package:flutter/material.dart';
import '../theme/theme.dart';

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
                  card_text: ThemeText(text: 'Thông tin'),
                ),
                OptionCard(
                  icon: Icons.grid_view,
                  card_text: ThemeText(text: 'Gợi ý'),
                ),
                OptionCard(
                  icon: Icons.propane_tank,
                  card_text: ThemeText(text: 'Đề xuất'),
                ),
                OptionCard(
                  icon: Icons.newspaper,
                  card_text: ThemeText(text: 'Mới nhất'),
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
  final ThemeText card_text;

  const OptionCard({required this.icon, required this.card_text});

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
            card_text,
          ],
        ),
      ),
    );
  }
}
