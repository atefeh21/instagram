import 'dart:convert';
import '../models/user.dart';
import 'package:http/http.dart' as http;
import 'package:instagram/global/global_variable.dart';
import 'package:instagram/models/login_response.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mobx/mobx.dart';

part 'auth_service.g.dart';

class AuthService extends _AuthService with _$AuthService {
  AuthService({this.username, this.password});
  String username;
  String password;
}

abstract class _AuthService with Store {
  @observable
  String token;

  @observable
  User logedInUser;

  @action
  void logout() async {
    token = null;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('userId', 0);
  }

  @action
  Future<LoginResponse> login(username, password) async {
    try {
      var response = await http.post(
        'http://kashune.com/mainweb/api/v1/login',
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, dynamic>{
          'username': username,
          'password': password,
          'key': GlobalVariable.apiKey
        }),
      );

      Map loginResponseMap = json.decode(response.body);

      LoginResponse theResponse = LoginResponse.fromJson(loginResponseMap);
      // print('login TOKEEEEEN ${theResponse.token}');
      if (theResponse.status == 'success') {
        token = theResponse.token;
        logedInUser = theResponse.user;

        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setInt('userId', logedInUser.id);
      } else
        token = null;
      return theResponse;
    } catch (e) {
      print('Ther ERROR is : $e');
      return null;
    }
  }
}
