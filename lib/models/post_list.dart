import 'package:instagram/models/post.dart';
import 'package:json_annotation/json_annotation.dart';
part 'post_list.g.dart';

@JsonSerializable()
class PostList {
  final String title;
  final String status;
  final int code;
  final List<Post> items;
  PostList({this.title, this.status, this.code, this.items});

  factory PostList.fromJson(Map<String, dynamic> json) =>
      _$PostListFromJson(json);

  Map<String, dynamic> toJson() => _$PostListToJson(this);
}
