import 'package:flutter/material.dart';

class UserListWidget extends StatelessWidget {
  const UserListWidget({
    Key key,
    @required this.users,
  }) : super(key: key);

  final List<String> users;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        // padding: const EdgeInsets.all(8),
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/user.png'),
              radius: 30.0,
            ),
            title: Text('username}'),
            subtitle: Text('name'),
            trailing: RaisedButton(
              // padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              onPressed: () {},
              child: Text(
                'Follow',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              color: Colors.lightBlue[500],
              textColor: Colors.white,
            ),
          );
        },
      ),
    );
  }
}
