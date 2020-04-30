// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) {
  return Post(
    id: json['id'] as int,
    caption: json['caption'] as String,
    userId: json['userId'] as int,
    active: json['active'] as int,
    createdAt: json['createdAt'] as String,
    updatedAt: json['updatedAt'] as String,
    ago: json['ago'] as String,
    date: json['date'] as String,
    files: (json['files'] as List)
        ?.map((e) =>
            e == null ? null : PostFile.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'caption': instance.caption,
      'userId': instance.userId,
      'active': instance.active,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'ago': instance.ago,
      'date': instance.date,
      'files': instance.files,
    };
