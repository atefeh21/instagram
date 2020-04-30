// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_files.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostFile _$PostFileFromJson(Map<String, dynamic> json) {
  return PostFile(
    id: json['id'] as int,
    src: json['src'] as String,
    type: json['type'] as String,
    postId: json['postId'] as int,
  );
}

Map<String, dynamic> _$PostFileToJson(PostFile instance) => <String, dynamic>{
      'id': instance.id,
      'src': instance.src,
      'type': instance.type,
      'postId': instance.postId,
    };
