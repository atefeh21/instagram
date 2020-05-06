import 'package:instagram/models/post.dart';
import 'package:instagram/models/user.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_profile.g.dart';

@JsonSerializable()
class UserProfile {
  final int id;
  final String username;
  final String name;
  final String email;
  final String website;
  final String bio;
  @JsonKey(name: 'profile_photo')
  final String photo;
  final int active;
  final bool followed;
  final List<Post> posts;
  final User user;
  UserProfile({
    this.id,
    this.username,
    this.name,
    this.email,
    this.website,
    this.bio,
    this.photo,
    this.active,
    this.followed,
    this.posts,
    this.user,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}
