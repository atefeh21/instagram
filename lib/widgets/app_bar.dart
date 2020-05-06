import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram/global/global_variable.dart';
import 'package:line_icons/line_icons.dart';

class AppBarWidget extends StatefulWidget {
  final int selectedAppBar;
  AppBarWidget(this.selectedAppBar);
  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  List<AppBar> _appBarOptions = <AppBar>[
    AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            onPressed: () {},
            alignment: Alignment(5, 0),
            icon: Icon(EvilIcons.camera, size: 40),
          );
        },
      ),
      title: Text(
        'Instagram',
        style: TextStyle(
          fontFamily: 'LobsterTwo',
          fontSize: 30.0,
          letterSpacing: 1.0,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            EvilIcons.sc_telegram,
            size: 35,
          ),
          onPressed: () {},
        ),
      ],
    ),
    AppBar(leading: Icon(LineIcons.search), title: Text('Search')),
    AppBar(
      title: Text('Upload'),
    ),
    AppBar(
      title: Text(
        'Activity',
        style: TextStyle(
          fontFamily: 'NotoSansKR',
        ),
      ),
      actions: <Widget>[
        Text(''),
      ],
    ),
    AppBar(
      title: Text(
        authServiceInstance.logedInUser.name,
        style: TextStyle(
          fontFamily: 'NotoSansKR',
        ),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return _appBarOptions.elementAt(widget.selectedAppBar);
  }
}
