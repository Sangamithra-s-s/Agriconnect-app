import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget {
  final String title;
  const BadgeWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(child: Text(title.isNotEmpty ? title[0] : '?')),
        const SizedBox(height: 6),
        Text(title, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}