class Post {
  final String id;
  final String username;
  final String content;
  final String? image;
  final int likes;
  final int comments;
  final String district;

  const Post({
    required this.id,
    required this.username,
    required this.content,
    this.image,
    this.likes = 0,
    this.comments = 0,
    this.district = '',
  });
}