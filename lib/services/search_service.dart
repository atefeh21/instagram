import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:instagram/global/global_variable.dart';
import 'package:instagram/models/user.dart';
import 'package:instagram/models/user_search_response.dart';

class SearchService {
  Future<List<User>> searchUser(String searchText) async {
    try {
      var response = await http.post(
        GlobalVariable.url +
            '/api/v1/users/search?token=' +
            authServiceInstance.token,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, dynamic>{'searchText': searchText}),
      );

      Map searchResponseMap = json.decode(response.body);
      UserSearchResponse theResponse =
          UserSearchResponse.fromJson(searchResponseMap);
      // // print('login TOKEEEEEN ${theResponse.token}');
      if (theResponse.status == 'success') {
        return theResponse.users;
      }
      return null;
    } catch (e) {
      print('Ther ERROR is : $e');
      return null;
    }
  }
}
