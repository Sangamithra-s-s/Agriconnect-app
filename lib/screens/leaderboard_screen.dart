import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final users = [
      {'name': 'Farmer A', 'points': '320', 'district': 'Alappuzha'},
      {'name': 'Farmer B', 'points': '290', 'district': 'Kottayam'},
      {'name': 'Farmer C', 'points': '250', 'district': 'Palakkad'},
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Leaderboard')),
      body: ListView(
        children: [
          const ListTile(title: Text('Individual Ranking'), tileColor: Color(0xFFEFF7EE)),
          ...users.map((u) => ListTile(
            title: Text(u['name']!),
            subtitle: Text(u['district']!),
            trailing: Text(u['points']!),
          )),
          const Divider(),
          const ListTile(title: Text('District Ranking'), tileColor: Color(0xFFEFF7EE)),
          const ListTile(title: Text('Alappuzha'), trailing: Text('1200 pts')),
          const ListTile(title: Text('Kottayam'), trailing: Text('980 pts')),
        ],
      ),
    );
  }
}