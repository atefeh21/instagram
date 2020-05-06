import 'package:flutter/material.dart';
import 'package:instagram/models/user.dart';
import 'package:instagram/models/user_profile.dart';
import 'package:instagram/services/user.service.dart';
import 'package:instagram/widgets/loading.dart';
import 'package:instagram/widgets/tabbar_profile.dart';
import 'package:instagram/widgets/user_profile_view.dart';

class UserProfilePage extends StatefulWidget {
  final User user;
  UserProfilePage(this.user);
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  UserProfile userProfile;
  bool _isLoading = false;

  void loadUserProfile() async {
    _isLoading = true;
    UserService instance = UserService();
    var _userProfile = await instance.userProfile(widget.user.id);
    setState(() {
      userProfile = _userProfile;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    loadUserProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading == true
        ? Loading()
        : Scaffold(
            appBar: AppBar(
              title: Text(userProfile.name),
            ),
            body: Container(
              child: Column(
                children: <Widget>[
                  UserProfileView(userProfile),
                  TabBarProfile(userProfile.posts),
                ],
              ),
            ),
          );
  }
}
