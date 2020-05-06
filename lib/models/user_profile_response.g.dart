// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileResponse _$UserProfileResponseFromJson(Map<String, dynamic> json) {
  return UserProfileResponse(
    title: json['title'] as String,
    msg: json['msg'] as String,
    status: json['status'] as String,
    code: json['code'] as int,
    user: json['content'] == null
        ? null
        : UserProfile.fromJson(json['content'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserProfileResponseToJson(
        UserProfileResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'msg': instance.msg,
      'status': instance.status,
      'code': instance.code,
      'content': instance.user,
    };
