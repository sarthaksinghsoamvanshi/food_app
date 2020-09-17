import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            onPressed: null),
        title: RichText(
          text: TextSpan(
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            children: [
              TextSpan(
                text: "Punk",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              TextSpan(text: "Food", style: TextStyle(color: Colors.amber))
            ],
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
              onPressed: null)
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal:10),
            decoration: BoxDecoration(
              borderRadius:BorderRadius.all(Radius.circular(30)),
              border: Border.all(color:Colors.grey,width:1)
            ),
            child: Row(
              children: [
                Expanded(
                  flex:1,
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
          )
        ],
      ),
    );
  }
}
