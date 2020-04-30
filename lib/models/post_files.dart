import 'package:json_annotation/json_annotation.dart';
part 'post_files.g.dart';

@JsonSerializable()
class PostFile {
  final int id;
  final String src;
  final String type;
  final int postId;
  PostFile({this.id, this.src, this.type, this.postId});

  factory PostFile.fromJson(Map<String, dynamic> json) =>
      _$PostFileFromJson(json);

  Map<String, dynamic> toJson() => _$PostFileToJson(this);
}
