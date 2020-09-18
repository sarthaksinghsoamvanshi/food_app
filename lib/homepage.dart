import 'package:flutter/material.dart';
import 'package:food_App/listitems.dart';
import 'package:food_App/scroll.dart';
import 'package:food_App/search.dart';

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
      body: ListView(
        children: [
          SearchLine(),
          ScrolLine(),
          ListItems(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "OFFERS & DISCOUNTS",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                  image: AssetImage("images/rect.jpg"), fit: BoxFit.cover),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber.withOpacity(0.7),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/asd.png"),
                              fit: BoxFit.cover)),
                      // color: Colors.green,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 30),
                      // color: Colors.black,
                      alignment: Alignment.topLeft,
                      child: RichText(
                          text: TextSpan(
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                        children: [
                          TextSpan(
                              text: "Get Discount of\n",
                              style: TextStyle(fontSize: 17)),
                          TextSpan(
                            text: "30%\n",
                            style: TextStyle(fontSize: 40),
                          ),
                          TextSpan(
                              text:
                                  "at Mac Donald's at your\nfirst order & cashback ",
                              style: TextStyle(fontSize: 12))
                        ],
                      )),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home,
              color: Colors.orange,
            ),
            Icon(Icons.favorite_border),
            Icon(Icons.alarm_on),
            Icon(Icons.person),
          ],
        ),
      ),
    );
  }
}
