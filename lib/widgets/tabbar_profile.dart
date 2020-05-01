import 'package:flutter/material.dart';
import 'package:instagram/models/post.dart';
import 'package:instagram/widgets/post_grid.dart';

class TabBarProfile extends StatefulWidget {
  final List<Post> posts;
  TabBarProfile(this.posts);
  @override
  _TabBarProfileState createState() => _TabBarProfileState();
}

class _TabBarProfileState extends State<TabBarProfile>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
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
                tabs: [
                  Tab(
                    icon: Icon(Icons.apps, size: 30, color: Colors.grey),
                  ),
                  Tab(
                    icon: Icon(Icons.format_list_bulleted,
                        size: 30, color: Colors.grey),
                  ),
                  Tab(
                    icon: Icon(Icons.location_on, size: 30, color: Colors.grey),
                  ),
                  Tab(
                    icon: Icon(Icons.account_box, size: 30, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              height: 400,
              child: TabBarView(
                controller: _controller,
                children: <Widget>[
                  CustomScrollView(
                    primary: false,
                    slivers: <Widget>[
                      SliverPadding(
                        padding: EdgeInsets.all(1),
                        sliver: SliverGrid.count(
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                          crossAxisCount: 3,
                          children: widget.posts.map((post) {
                            return PostGrid(post);
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text('Latitude: 48.09342\nLongitude: 11.23403'),
                      trailing: IconButton(
                          icon: Icon(Icons.my_location), onPressed: () {}),
                    ),
                  ),
                  Card(
                    child: Text('location tab'),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.account_box),
                      title: Text('account box tab'),
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
