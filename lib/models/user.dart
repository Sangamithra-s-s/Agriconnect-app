class User {
  final String id;
  final String name;
  final String district;
  final int points;

  const User({required this.id, required this.name, this.district = '', this.points = 0});
}