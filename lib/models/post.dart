import 'package:instagram/models/post_files.dart';
import 'package:json_annotation/json_annotation.dart';
part 'post.g.dart';

@JsonSerializable()
class Post {
  final int id;
  final String caption;
  final int userId;
  final int active;
  final String createdAt;
  final String updatedAt;
  final String ago;
  final String date;
  List<PostFile> files;
  Post({
    this.id,
    this.caption,
    this.userId,
    this.active,
    this.createdAt,
    this.updatedAt,
    this.ago,
    this.date,
    this.files,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}
