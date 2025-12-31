import 'package:flutter/material.dart';
import '../models/course.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final courses = const [
      Course(title: 'Tomato Cultivation - Basics', videos: 6),
      Course(title: 'Drip Irrigation Setup', videos: 4),
      Course(title: 'Organic Pest Management', videos: 5),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Learning')),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final c = courses[index];
          return Card(
            margin: const EdgeInsets.all(12),
            child: ListTile(
              title: Text(c.title),
              subtitle: Text('${c.videos} videos'),
              trailing: ElevatedButton(onPressed: () {}, child: const Text('Open')),
            ),
          );
        },
      ),
    );
  }
}