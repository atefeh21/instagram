import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  final Function searchFunction;

  SearchInput({this.searchFunction});
  @override
  _SearchInputState createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  TextEditingController searchController;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 230,
          child: TextFormField(
            controller: searchController,
            maxLength: 15,
            style: TextStyle(
              letterSpacing: 1,
              fontFamily: 'NotoSansKR',
            ),
            decoration: InputDecoration(
              fillColor: Colors.blueGrey[100],
              filled: true,
              hintText: 'Looking for who?',
              hintStyle: TextStyle(
                fontSize: 16.0,
                color: Colors.blueGrey[500],
                fontFamily: 'NotoSansKR',
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        RaisedButton(
          color: Colors.blueGrey[500],
          textColor: Colors.white,
          onPressed: () => widget.searchFunction(searchController.text),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              'Search',
              style: TextStyle(
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
