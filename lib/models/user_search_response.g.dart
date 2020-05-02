// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSearchResponse _$UserSearchResponseFromJson(Map<String, dynamic> json) {
  return UserSearchResponse(
    title: json['title'] as String,
    msg: json['msg'] as String,
    status: json['status'] as String,
    code: json['code'] as int,
    users: (json['content'] as List)
        ?.map(
            (e) => e == null ? null : User.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$UserSearchResponseToJson(UserSearchResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'msg': instance.msg,
      'status': instance.status,
      'code': instance.code,
      'content': instance.users,
    };
