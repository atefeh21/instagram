import 'package:flutter/material.dart';
import 'package:instagram/global/global_variable.dart';
import 'package:instagram/models/user.dart';
import 'package:instagram/pages/users_profile_page.dart';

class UserListWidget extends StatelessWidget {
  const UserListWidget({
    Key key,
    @required this.users,
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    // print('PHOTO ${GlobalVariable.url + users[1].photo}');
    return Container(
      height: 400,
      child: users.isNotEmpty
          ? ListView.builder(
              // padding: const EdgeInsets.all(8),
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserProfilePage(users[index])),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(GlobalVariable.url + users[index].photo),
                      radius: 30.0,
                    ),
                    title: Text(users[index].username),
                    subtitle: Text(
                      users[index].name,
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: users[index].followed == true
                        ? OutlineButton(
                            onPressed: () {},
                            child: Text(
                              'UnFollow',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            color: Colors.white,
                            textColor: Colors.blueGrey[700],
                          )
                        : RaisedButton(
                            onPressed: () {},
                            child: Text(
                              'Follow',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            color: Colors.lightBlue[500],
                            textColor: Colors.white,
                          ),
                  ),
                );
              },
            )
          : Text(''),
    );
  }
}
