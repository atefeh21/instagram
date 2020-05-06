import 'package:flutter/material.dart';
import 'package:instagram/pages/search_people.dart';
import 'package:instagram/pages/search_tags.dart';

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
              height: 1000,
              child: TabBarView(
                controller: _controller,
                children: <Widget>[
                  SearchPeople(),
                  SearchTags(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
