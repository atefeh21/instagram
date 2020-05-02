import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
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

  User({
    this.id,
    this.username,
    this.name,
    this.email,
    this.website,
    this.bio,
    this.photo,
    this.active,
    this.followed,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
