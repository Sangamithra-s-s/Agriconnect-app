import 'package:flutter/material.dart';
import '../widgets/quiz_card.dart';
import '../models/quiz.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  int points = 0;
  final quizzes = const [
    Quiz(id: 'q1', question: 'When do you apply fertilizer for tomatoes?', options: ['Before sowing', 'After 2 weeks', 'After harvest'], correctIndex: 1),
    Quiz(id: 'q2', question: 'Best time to irrigate?', options: ['Morning', 'Noon', 'Night'], correctIndex: 0),
  ];

  void _onAnswered(bool correct) {
    if (correct) {
      setState(() { points += 10; });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tasks & Quizzes')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('Points: ${points}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView(
              children: quizzes.map((q) => QuizCard(quiz: q, onAnswered: _onAnswered)).toList(),
            ),
          )
        ],
      ),
    );
  }
}