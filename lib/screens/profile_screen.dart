import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
  // sample posts by user
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Row(children: [
            const CircleAvatar(radius: 36, child: Icon(Icons.person)),
            const SizedBox(width: 12),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
              Text('Farmer Name', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text('Alappuzha, Kerala'),
            ])
          ]),
          const SizedBox(height: 12),
          const Divider(),
          const Text('My Posts', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ListTile(title: Text('Planted new seeds')),
          ListTile(title: Text('Applied organic manure')),
        ],
      ),
    );
  }
}