// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as int,
    username: json['username'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    website: json['website'] as String,
    bio: json['bio'] as String,
    photo: json['profile_photo'] as String,
    active: json['active'] as int,
    followed: json['followed'] as bool,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'email': instance.email,
      'website': instance.website,
      'bio': instance.bio,
      'profile_photo': instance.photo,
      'active': instance.active,
      'followed': instance.followed,
    };
