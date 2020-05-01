import 'package:flutter/material.dart';
import 'package:instagram/global/global_variable.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 100,
              child: DrawerHeader(
                child: Text(
                  '${authServiceInstance.logedInUser.name}',
                  style: TextStyle(fontSize: 16, fontFamily: 'NotoSansKR'),
                ),
              ),
            ),
            Expanded(
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
      ),
    );
  }
}
