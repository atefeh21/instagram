import 'package:flutter/material.dart';
import 'package:instagram/pages/home.dart';
import 'package:instagram/pages/profile_page.dart';
import 'package:instagram/widgets/app_bar.dart';
import './style/text_style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalTextStyle globalTextStyle = GlobalTextStyle();
  int _selectedIndex = 0;
  int selectedAppBar = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Index 1: Search',
      style: optionStyle,
    ),
    Text(
      'Index 2: Add',
      style: optionStyle,
    ),
    Text(
      'Index 3: Heart',
      style: optionStyle,
    ),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      selectedAppBar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: _appBarOptions.elementAt(selectedAppBar),
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, kToolbarHeight),
          child: AppBarWidget(selectedAppBar),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Center(
                child: _widgetOptions.elementAt(_selectedIndex),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box,
                size: 30,
              ),
              title: Text('Add'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 30,
              ),
              title: Text('Heart'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              title: Text('Profile'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue[800],
          unselectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
        endDrawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 100,
                child: DrawerHeader(
                  child: Text(
                    'Username',
                    style: TextStyle(fontSize: 20, fontFamily: 'NotoSansKR'),
                  ),
                ),
              ),
              Expanded(
                // ListView contains a group of widgets that scroll inside the drawer
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.archive,
                        size: 35,
                      ),
                      title: Text(
                        'Archive',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'NotoSansKR',
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.timelapse,
                        size: 35,
                      ),
                      title: Text(
                        'Your Activity',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'NotoSansKR',
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.bookmark,
                        size: 35,
                      ),
                      title: Text(
                        'Saved',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'NotoSansKR',
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.format_list_bulleted,
                        size: 35,
                      ),
                      title: Text(
                        'Closed Friends',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'NotoSansKR',
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Container(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      children: <Widget>[
                        Divider(),
                        ListTile(
                          leading: Icon(
                            Icons.settings,
                            size: 35,
                          ),
                          title: Text(
                            'Settings',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'NotoSansKR',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
