import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:line_icons/line_icons.dart';

class PostWidget extends StatefulWidget {
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
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
          children: <Widget>[
            IconButton(
              icon: Icon(
                EvilIcons.heart,
                size: 40,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                EvilIcons.comment,
                size: 40,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                LineIcons.share,
                size: 30,
              ),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(left: 160),
              child: IconButton(
                icon: Icon(
                  LineIcons.bookmark_o,
                  size: 38,
                ),
                onPressed: () {},
              ),
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
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          width: 350,
          child: Text(
              ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
        ),
      ],
    );
  }
}
