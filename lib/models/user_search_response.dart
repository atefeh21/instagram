import 'package:instagram/models/user.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_search_response.g.dart';

@JsonSerializable()
class UserSearchResponse {
  final String title;
  final String msg;
  final String status;
  final int code;
  @JsonKey(name: 'content')
  final List<User> users;

  UserSearchResponse({
    this.title,
    this.msg,
    this.status,
    this.code,
    this.users,
  });

  factory UserSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$UserSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserSearchResponseToJson(this);
}
