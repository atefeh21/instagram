import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram/global/global_variable.dart';
import 'package:instagram/models/post.dart';
import 'package:instagram/widgets/carousel.dart';
import 'package:line_icons/line_icons.dart';

class PostWidget extends StatefulWidget {
  final Post post;
  PostWidget(this.post);
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 5.0),
                child: CircleAvatar(
                  backgroundImage:
                      NetworkImage(GlobalVariable.url + widget.post.user.photo),
                  radius: 25.0,
                ),
              ),
              Text(
                widget.post.user.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {},
                alignment: Alignment(40.0, 0),
              )
            ],
          ),
          CarouselWithIndicatorDemo(widget.post.files),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  EvilIcons.heart,
                  size: 40,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  EvilIcons.comment,
                  size: 40,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  LineIcons.share,
                  size: 30,
                ),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(left: 160),
                child: IconButton(
                  icon: Icon(
                    LineIcons.bookmark_o,
                    size: 38,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: <Widget>[
                Icon(
                  FontAwesome.heart,
                  size: 20,
                ),
                SizedBox(width: 4.0),
                Text(
                  '67 Likes',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 5.0),
            width: 350,
            child: Text(
              widget.post.caption,
              style: TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.post.ago,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
