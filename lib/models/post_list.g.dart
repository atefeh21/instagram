// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostList _$PostListFromJson(Map<String, dynamic> json) {
  return PostList(
    title: json['title'] as String,
    status: json['status'] as String,
    code: json['code'] as int,
    items: (json['items'] as List)
        ?.map(
            (e) => e == null ? null : Post.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PostListToJson(PostList instance) => <String, dynamic>{
      'title': instance.title,
      'status': instance.status,
      'code': instance.code,
      'items': instance.items,
    };
