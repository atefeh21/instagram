import 'package:flutter/material.dart';
import 'package:instagram/widgets/profile_view.dart';
import 'package:instagram/widgets/tabbar_profile.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ProfileView(),
          TabBarProfile(),
        ],
      ),
    );
  }
}
