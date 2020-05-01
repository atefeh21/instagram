import 'package:flutter/material.dart';
import 'package:instagram/models/post.dart';
import 'package:instagram/widgets/post_widget.dart';

class SinglePost extends StatefulWidget {
  final Post post;
  SinglePost(this.post);
  @override
  _SinglePostState createState() => _SinglePostState();
}

class _SinglePostState extends State<SinglePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: PostWidget(widget.post),
    );
  }
}
