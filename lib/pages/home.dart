import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 5.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/user.png'),
                radius: 25.0,
              ),
            ),
            Text(
              'username',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
              alignment: Alignment(40.0, 0),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.only(top: 1.0),
          child: Image.asset(
            'assets/sea2.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              EvilIcons.heart,
              size: 40,
            ),
            Icon(
              EvilIcons.comment,
              size: 40,
            ),
            Icon(
              EvilIcons.sc_telegram,
              size: 40,
            ),
          ],
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: <Widget>[
              Icon(
                FontAwesome.heart,
                size: 20,
              ),
              SizedBox(width: 4.0),
              Text(
                '67 Likes',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
          child: Row(
            children: <Widget>[
              Text(
                'username',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 4.0),
              Text('caption goes here...'),
            ],
          ),
        )
      ],
    );
  }
}
