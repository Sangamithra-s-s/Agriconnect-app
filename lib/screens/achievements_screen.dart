import 'package:flutter/material.dart';
import '../widgets/badge_widget.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final badges = ['First Harvest', 'Organic Champion', '10 Tasks Completed'];
    return Scaffold(
      appBar: AppBar(title: const Text('Achievements')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: badges.map((b) => BadgeWidget(title: b)).toList(),
        ),
      ),
    );
  }
}