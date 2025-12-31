import 'package:flutter/material.dart';
import '../models/post.dart';

class PostCard extends StatelessWidget {
  final Post post;
  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              CircleAvatar(child: Text(post.username.isNotEmpty ? post.username[0] : '?')),
              const SizedBox(width: 8),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(post.username, style: const TextStyle(fontWeight: FontWeight.bold)),
                if (post.district.isNotEmpty) Text(post.district, style: const TextStyle(fontSize: 12, color: Colors.grey)),
              ])
            ]),
            const SizedBox(height: 8),
            Text(post.content),
            if (post.image != null) ...[
              const SizedBox(height: 8),
              Image.network(post.image!),
            ],
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up_alt_outlined)),
                      Text('${post.likes}'),
                  const SizedBox(width: 12),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.comment_outlined)),
                      Text('${post.comments}'),
                ]),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
              ],
            )
          ],
        ),
      ),
    );
  }
}