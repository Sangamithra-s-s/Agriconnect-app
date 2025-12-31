import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final news = [
      {'title': 'New subsidy announced for drip irrigation', 'summary': 'Government announces subsidy to promote water-efficient irrigation.'},
      {'title': 'Monsoon forecast and crop advice', 'summary': 'Expected heavy rains in parts of Kerala; recommended drainage tips.'},
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('News & Policies')),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: news.map((n) => Card(
          child: ListTile(title: Text(n['title']!), subtitle: Text(n['summary']!))
        )).toList(),
      ),
    );
  }
}