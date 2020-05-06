import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:instagram/global/global_variable.dart';
import 'package:instagram/models/post_response.dart';
import 'package:mobx/mobx.dart';
import '../models/post.dart';
part 'post_service.g.dart';

class PostService extends _PostService with _$PostService {}

abstract class _PostService with Store {
  Future<List<Post>> myPosts() async {
    try {
      http.Response response = await http.get(GlobalVariable.url +
          '/api/v1/post/mine?token=' +
          authServiceInstance.token);
      if (response.statusCode == 200) {
        Map searchResponseMap = json.decode(response.body);
        PostResponse theResponse = PostResponse.fromJson(searchResponseMap);
        if (theResponse.status == 'success') {
          return theResponse.posts;
        }
        return null;
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
