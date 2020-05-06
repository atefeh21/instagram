import 'package:instagram/models/user_profile.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_profile_response.g.dart';

@JsonSerializable()
class UserProfileResponse {
  final String title;
  final String msg;
  final String status;
  final int code;
  @JsonKey(name: 'content')
  final UserProfile user;

  UserProfileResponse({
    this.title,
    this.msg,
    this.status,
    this.code,
    this.user,
  });

  factory UserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileResponseToJson(this);
}
