import 'package:flutter/material.dart';

class SearchLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          border: Border.all(color: Colors.grey, width: 1)),
      child: Row(
        children: [
          Expanded(
              // flex: 1,
              child: IconButton(icon: Icon(Icons.search), onPressed: null)),
          Expanded(
            flex: 7,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search Here", focusedBorder: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
