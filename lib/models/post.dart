import 'package:instagram/models/post_files.dart';
import 'package:instagram/models/user.dart';
import 'package:json_annotation/json_annotation.dart';
part 'post.g.dart';

@JsonSerializable()
class Post {
  final int id;
  final String caption;
  final int userId;
  final int active;
  final String ago;
  final User user;
  List<PostFile> files;
  Post({
    this.id,
    this.caption,
    this.userId,
    this.active,
    this.ago,
    this.user,
    this.files,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}
