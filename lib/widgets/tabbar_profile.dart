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
                    icon: const Icon(Icons.apps, size: 30, color: Colors.grey),
                  ),
                  Tab(
                    icon: const Icon(Icons.format_list_bulleted,
                        size: 30, color: Colors.grey),
                  ),
                  Tab(
                    icon: const Icon(Icons.location_on,
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
              height: 400,
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
                              padding: EdgeInsets.all(0.7),
                              child: Image.asset(
                                'assets/sea1.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(0.7),
                              child: Image.asset(
                                'assets/girl.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(0.7),
                              child: Image.asset(
                                'assets/rabit.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(0.7),
                              child: Image.asset(
                                'assets/hourse.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(0.7),
                              child: Image.asset(
                                'assets/deer2.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(0.7),
                              child: Image.asset(
                                'assets/deer.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(0.7),
                              child: Image.asset(
                                'assets/cave.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(0.7),
                              child: Image.asset(
                                'assets/sea2.jpg',
                                fit: BoxFit.cover,
                              ),
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
                    child: Text('location tab'),
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
