import 'package:instagram/models/post.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_response.g.dart';

@JsonSerializable()
class PostResponse {
  final String title;
  final String msg;
  final String status;
  final int code;
  @JsonKey(name: 'content')
  final List<Post> posts;

  PostResponse({
    this.title,
    this.msg,
    this.status,
    this.code,
    this.posts,
  });

  factory PostResponse.fromJson(Map<String, dynamic> json) =>
      _$PostResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostResponseToJson(this);
}
