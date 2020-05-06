import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:instagram/pages/activity.dart';
import 'package:instagram/pages/auth/login.dart';
import 'package:instagram/pages/home.dart';
import 'package:instagram/pages/profile_page.dart';
import 'package:instagram/pages/search.dart';
import 'package:instagram/widgets/app_bar.dart';
import 'package:instagram/widgets/new_post.dart';
import 'package:instagram/widgets/side_drawer.dart';
import 'package:line_icons/line_icons.dart';

import './style/text_style.dart';
import 'global/global_variable.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Observer(
        builder: (_) =>
            authServiceInstance.token == null ? Login() : MyHomePage(),
      ),
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
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Search(),
    NewPost(),
    ActivityPage(),
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
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.home,
              size: 30,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.search,
              size: 30,
            ),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.plus_square_o,
              size: 33,
            ),
            title: Text('Add'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.heart_o,
              size: 30,
            ),
            title: Text('Heart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.user,
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
      endDrawer: _selectedIndex == 4 ? SideDrawer() : null,
    );
  }
}
