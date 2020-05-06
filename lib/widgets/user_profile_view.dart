import 'package:flutter/material.dart';
import 'package:instagram/global/global_variable.dart';
import 'package:instagram/models/user_profile.dart';
import 'package:instagram/style/text_style.dart';

class UserProfileView extends StatefulWidget {
  final UserProfile user;
  UserProfileView(this.user);
  @override
  _UserProfileViewState createState() => _UserProfileViewState();
}

class _UserProfileViewState extends State<UserProfileView> {
  @override
  Widget build(BuildContext context) {
    GlobalTextStyle globalTextStyle = GlobalTextStyle();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 12.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 18.0),
                child: CircleAvatar(
                  backgroundImage:
                      NetworkImage(GlobalVariable.url + widget.user.photo),
                  radius: 50.0,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    child: widget.user.followed == true
                        ? OutlineButton(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            onPressed: () {},
                            child: Text(
                              'Message',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            color: Colors.lightBlue[500],
                            textColor: Colors.grey[700],
                          )
                        : RaisedButton(
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
            ],
          ),
          SizedBox(height: 8.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(widget.user.bio),
                SizedBox(height: 3.0),
                Text('and here too,'),
                SizedBox(height: 3.0),
                GestureDetector(
                    child: Text(widget.user.website,
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
