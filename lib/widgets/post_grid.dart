import 'package:flutter/material.dart';
import 'package:instagram/global/global_variable.dart';
import 'package:instagram/models/post.dart';
import 'package:instagram/pages/single_post.dart';

class PostGrid extends StatelessWidget {
  final Post post;
  PostGrid(this.post);

  @override
  Widget build(BuildContext context) {
    print(post.files);
    return Container(
      padding: EdgeInsets.all(0.7),
      child: GestureDetector(
        child: Image.network(
          GlobalVariable.url + post.files[0].src,
          fit: BoxFit.cover,
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SinglePost(post)),
        ),
      ),
    );
  }
}
