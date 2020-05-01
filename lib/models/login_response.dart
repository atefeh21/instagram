import 'package:instagram/models/user.dart';
import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final String title;
  final String msg;
  @JsonKey(name: 'content')
  final String token;
  final User user;
  final String status;
  final int code;

  LoginResponse({
    this.title,
    this.msg,
    this.token,
    this.user,
    this.status,
    this.code,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
