import 'package:flutter/material.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  final TextStyle titleFontStyle =
      TextStyle(fontSize: 13.0, color: Colors.black54);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                'New',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'NotoSansKR',
                ),
              ),
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 3.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/user.png'),
                    radius: 30.0,
                  ),
                  title: Text(
                    'Follow Alex Mix and others you know to see their photos',
                    style: titleFontStyle,
                  ),
                  subtitle: Text(
                    '2d',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                'This Week',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'NotoSansKR',
                ),
              ),
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/user3.png'),
                    radius: 30.0,
                  ),
                  title: Text(
                    'Follow Alex Mix and others you know to see their photos',
                    style: titleFontStyle,
                  ),
                  subtitle: Text(
                    '12d',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/user2.png'),
                    radius: 30.0,
                  ),
                  title: Text(
                    'Follow Alex Mix and others you know to see their photos',
                    style: titleFontStyle,
                  ),
                  subtitle: Text(
                    '20d',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                'This Month',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'NotoSansKR',
                ),
              ),
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/user5.png'),
                    radius: 30.0,
                  ),
                  title: Text(
                    'Follow Alex Mix and others you know to see their photos',
                    style: titleFontStyle,
                  ),
                  subtitle: Text(
                    '24d',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/user3.png'),
                    radius: 30.0,
                  ),
                  title: Text(
                    'Follow Alex Mix and others you know to see their photos',
                    style: titleFontStyle,
                  ),
                  subtitle: Text(
                    '28d',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
