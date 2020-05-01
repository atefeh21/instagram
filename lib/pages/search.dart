import 'package:flutter/material.dart';
import '../widgets/user_list_widget.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();
  final TextStyle titleFontStyle =
      TextStyle(fontSize: 13.0, color: Colors.black54);
  final List<String> users = <String>[
    'Mahnaz Nasiri',
    'Maryam Rasuli',
    'Zahra Hajian',
    'Reyhane Abedi',
    'Farzane Heidari',
    'Sare Bayat',
    'Efat Adelian',
    'Nader Dadidi',
    'Kiana Kianfar',
    'Qazal Kianfar',
    'Majid Gachkar',
    'Mahin Emadi'
  ];

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
                      hintText: 'Look for?',
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
                  onPressed: () {},
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
                      'Suggested',
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
