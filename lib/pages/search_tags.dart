import 'package:flutter/material.dart';
import 'package:instagram/models/user.dart';
import 'package:instagram/services/search_service.dart';
import '../widgets/user_list_widget.dart';

class SearchTags extends StatefulWidget {
  @override
  _SearchTagsState createState() => _SearchTagsState();
}

class _SearchTagsState extends State<SearchTags> {
  TextEditingController searchController = TextEditingController();
  final TextStyle titleFontStyle =
      TextStyle(fontSize: 13.0, color: Colors.black54);
  List<User> users = [];
  String titleText = 'Suggested';
  void searchLoad(String searchText) async {
    setState(() => titleText = 'Searching ...');
    SearchService instance = SearchService();
    var _users = await instance.searchUser(searchText);
    if (_users != null) {
      setState(() {
        users = _users;
        titleText = 'Found ${_users.length} post(s)';
      });
    } else {
      setState(() {
        titleText = 'Found 0 posts';
        users = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 230,
                  child: TextFormField(
                    controller: searchController,
                    maxLength: 15,
                    style: TextStyle(
                      letterSpacing: 1,
                      fontFamily: 'NotoSansKR',
                    ),
                    decoration: InputDecoration(
                      fillColor: Colors.blueGrey[100],
                      filled: true,
                      hintText: 'Looking for what?',
                      hintStyle: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blueGrey[500],
                        fontFamily: 'NotoSansKR',
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                RaisedButton(
                  color: Colors.blueGrey[500],
                  textColor: Colors.white,
                  onPressed: () {
                    searchLoad(searchController.text);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text(
                      'Search',
                      style: TextStyle(
                        fontFamily: 'NotoSansKR',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5.0),
                    child: Text(
                      titleText,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontFamily: 'NotoSansKR',
                      ),
                    ),
                  ),
                  UserListWidget(users: users),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
