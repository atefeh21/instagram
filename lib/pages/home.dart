import 'package:flutter/material.dart';
import 'package:instagram/models/post.dart';
import 'package:instagram/services/post_service.dart';
import 'package:instagram/widgets/loading.dart';

import 'package:instagram/widgets/post_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post> posts = [];
  bool _isLoading = false;

  void loadMyPosts() async {
    _isLoading = true;
    PostService instance = PostService();
    var _posts = await instance.myPosts();
    setState(() {
      posts = _posts;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    loadMyPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading == true
        ? Loading()
        : SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: posts.map((post) => PostWidget(post)).toList(),
            ),
          );
  }
}
