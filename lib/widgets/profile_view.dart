import 'package:flutter/material.dart';
import 'package:instagram/style/text_style.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalTextStyle globalTextStyle = GlobalTextStyle();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/user.png'),
                  radius: 50.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 5.0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              '32',
                              style: globalTextStyle.statisticsStyle,
                            ),
                            Text(
                              'posts',
                              style: globalTextStyle.statisticsTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(width: 12.0),
                        Column(
                          children: <Widget>[
                            Text(
                              '445',
                              style: globalTextStyle.statisticsStyle,
                            ),
                            Text(
                              'followers',
                              style: globalTextStyle.statisticsTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(width: 12.0),
                        Column(
                          children: <Widget>[
                            Text(
                              '879',
                              style: globalTextStyle.statisticsStyle,
                            ),
                            Text(
                              'following',
                              style: globalTextStyle.statisticsTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      width: 190.0,
                      child: RaisedButton(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        onPressed: () {},
                        child: Text(
                          'Follow',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        color: Colors.lightBlue[500],
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Your bio goes here ...'),
                SizedBox(height: 3.0),
                Text('and here too,'),
                SizedBox(height: 3.0),
                GestureDetector(
                    child: Text("www.bootem.ir",
                        style: TextStyle(color: Colors.blue)),
                    onTap: () {
                      // do what you need to do when "Click here" gets clicked
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
