import 'package:flutter/material.dart';
import 'package:instagram/models/post.dart';
import 'package:instagram/services/post_service.dart';
import 'package:instagram/widgets/loading.dart';
import 'package:instagram/widgets/profile_view.dart';
import 'package:instagram/widgets/tabbar_profile.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
        : Container(
            child: Column(
              children: <Widget>[
                ProfileView(),
                TabBarProfile(posts),
              ],
            ),
          );
  }
}
