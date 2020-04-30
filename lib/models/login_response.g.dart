// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return LoginResponse(
    title: json['title'] as String,
    msg: json['msg'] as String,
    token: json['token'] as String,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    status: json['status'] as String,
    code: json['code'] as int,
  );
}

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'msg': instance.msg,
      'token': instance.token,
      'user': instance.user,
      'status': instance.status,
      'code': instance.code,
    };
