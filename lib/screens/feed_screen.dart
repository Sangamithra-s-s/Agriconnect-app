import 'package:flutter/material.dart';
import '../models/post.dart';
import '../widgets/post_card.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  List<Post> get samplePosts => const [
    Post(id: 'p1', username: 'Farmer A', content: 'Planted tomatoes today! #tomato', likes: 12, comments: 4, district: 'Alappuzha'),
    Post(id: 'p2', username: 'Farmer B', content: 'Used organic compost. Growth looks good.', likes: 20, comments: 6, district: 'Kottayam'),
  ];

  @override
  Widget build(BuildContext context) {
    final posts = samplePosts;
    return Scaffold(
      appBar: AppBar(title: const Text('Community Feed')),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) => PostCard(post: posts[index]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // open post creation screen (not implemented)
        },
      ),
    );
  }
}