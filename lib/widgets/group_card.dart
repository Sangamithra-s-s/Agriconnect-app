import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
  final String title;
  final String members;
  const GroupCard({super.key, required this.title, this.members = ''});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: ListTile(
        title: Text(title),
        subtitle: Text(members),
        leading: const Icon(Icons.group),
        trailing: ElevatedButton(onPressed: () {}, child: const Text('Join')),
      ),
    );
  }
}