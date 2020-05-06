import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:instagram/global/global_variable.dart';
import 'package:instagram/models/user_profile.dart';
import 'package:instagram/models/user_profile_response.dart';

class UserService {
  Future<UserProfile> userProfile(int userId) async {
    try {
      var response = await http.get(
        GlobalVariable.url +
            '/api/v1/user/profile?token=' +
            authServiceInstance.token +
            '&user_id=' +
            userId.toString(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      Map profileResponseMap = json.decode(response.body);
      UserProfileResponse theResponse =
          UserProfileResponse.fromJson(profileResponseMap);

      if (theResponse.status == 'success') {
        return theResponse.user;
      }
      return null;
    } catch (e) {
      print('Ther ERROR is : $e');
      return null;
    }
  }
}
