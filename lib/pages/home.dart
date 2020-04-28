import 'package:flutter/material.dart';

import 'package:instagram/widgets/post_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          PostWidget(),
          PostWidget(),
          PostWidget(),
          PostWidget(),
          PostWidget(),
        ],
      ),
    );
  }
}
