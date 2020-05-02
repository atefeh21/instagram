import 'package:flutter/material.dart';
import 'package:instagram/pages/search_user.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: TabBar(
                controller: _controller,
                indicatorColor: Colors.grey,
                labelColor: Colors.blueGrey[700],
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: 'People',
                  ),
                  Tab(
                    text: 'Tags',
                  ),
                ],
              ),
            ),
            Container(
              height: 500,
              child: TabBarView(
                controller: _controller,
                children: <Widget>[
                  SearchPeople(),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text('Latitude: 48.09342\nLongitude: 11.23403'),
                      trailing: IconButton(
                          icon: Icon(Icons.my_location), onPressed: () {}),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
