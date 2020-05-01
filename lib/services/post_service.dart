import 'dart:convert';
import 'package:instagram/models/post_list.dart';

import '../models/post.dart';
import 'package:http/http.dart' as http;
import 'package:instagram/global/global_variable.dart';
import 'package:instagram/models/login_response.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mobx/mobx.dart';

part 'post_service.g.dart';

class PostService extends _PostService with _$PostService {}

abstract class _PostService with Store {
  Future<List<Post>> myPosts() async {
    try {
      http.Response response = await http.get(GlobalVariable.url +
          '/api/v1/post/mine?token=' +
          authServiceInstance.token);

      if (response.statusCode == 200) {
        var postMap = json.decode(response.body);
        var postList = postMap['content'];
        // print(postMap['content']);
        List<Post> posts = [];
        postList.forEach((i) {
          posts.add(Post.fromJson(i));
        });
        return posts;
      } else {
        print('Error msg: Connection to the server faild!');
        return null;
      }
    } catch (e) {
      print('Error is $e');
      return null;
    }
  }
}
