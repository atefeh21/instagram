import 'package:flutter/material.dart';

class TabBarProfile extends StatefulWidget {
  @override
  _TabBarProfileState createState() => _TabBarProfileState();
}

class _TabBarProfileState extends State<TabBarProfile>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
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
                    icon: const Icon(Icons.apps, size: 30, color: Colors.grey),
                  ),
                  Tab(
                    icon: const Icon(Icons.format_list_bulleted,
                        size: 30, color: Colors.grey),
                  ),
                  Tab(
                    icon: const Icon(Icons.account_box,
                        size: 30, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              child: TabBarView(
                controller: _controller,
                children: <Widget>[
                  CustomScrollView(
                    primary: false,
                    slivers: <Widget>[
                      SliverPadding(
                        padding: const EdgeInsets.all(1),
                        sliver: SliverGrid.count(
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                          crossAxisCount: 3,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(8),
                              child: const Text(
                                  'He\'d have you all unravel at the'),
                              color: Colors.green[100],
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              child: const Text('Heed not the rabble'),
                              color: Colors.green[200],
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              child: const Text('Sound of screams but the'),
                              color: Colors.green[300],
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              child: const Text('Who scream'),
                              color: Colors.green[400],
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              child: const Text('Revolution is coming...'),
                              color: Colors.green[500],
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              child: const Text('Revolution, they...'),
                              color: Colors.green[600],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.location_on),
                      title: Text('Latitude: 48.09342\nLongitude: 11.23403'),
                      trailing: IconButton(
                          icon: const Icon(Icons.my_location),
                          onPressed: () {}),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.account_box),
                      title: Text('account box tab'),
                      trailing: IconButton(
                          icon: const Icon(Icons.my_location),
                          onPressed: () {}),
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
