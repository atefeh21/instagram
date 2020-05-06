// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return UserProfile(
    id: json['id'] as int,
    username: json['username'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    website: json['website'] as String,
    bio: json['bio'] as String,
    photo: json['profile_photo'] as String,
    active: json['active'] as int,
    followed: json['followed'] as bool,
    posts: (json['posts'] as List)
        ?.map(
            (e) => e == null ? null : Post.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'email': instance.email,
      'website': instance.website,
      'bio': instance.bio,
      'profile_photo': instance.photo,
      'active': instance.active,
      'followed': instance.followed,
      'posts': instance.posts,
      'user': instance.user,
    };
