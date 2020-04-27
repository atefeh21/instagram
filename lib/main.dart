import 'package:flutter/material.dart';
import 'package:instagram/pages/profile_page.dart';
import 'package:instagram/widgets/profile_view.dart';
import './style/text_style.dart';
import './widgets/tabbar_profile.dart';

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
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
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
    );
  }
}
