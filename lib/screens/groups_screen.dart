import 'package:flutter/material.dart';
import '../widgets/group_card.dart';

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final groups = [
      {'title': 'Alappuzha Farmers', 'members': '120 members'},
      {'title': 'Kottayam Tomato Growers', 'members': '85 members'},
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Groups')),
      body: ListView(
        children: groups.map((g) => GroupCard(title: g['title']!, members: g['members']!)).toList(),
      ),
    );
  }
}