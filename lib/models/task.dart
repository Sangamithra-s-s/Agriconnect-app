class Task {
  final String id;
  final String title;
  final String description;
  final int points;

  const Task({required this.id, required this.title, required this.description, this.points = 0});
}