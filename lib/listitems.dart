import 'package:flutter/material.dart';
import 'package:food_App/detailspage.dart';

class ListItems extends StatefulWidget {
  @override
  _ListItemsState createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  var foods = [
    {
      "name": "Burger and drinks",
      "image": "images/burger.png",
      "company": "Mac Donald's",
      "price": 17,
    },
    {
      "price": 29,
      "name": "Noodles",
      "image": "images/noodles.png",
      "company": "pizza hut"
    },
    {
      "price": 28,
      "name": "Special Combo",
      "image": "images/mac.png",
      "company": "Mac Donald's"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => DetailsScreen(
                    image: foods[index]["image"],
                    name: foods[index]["name"],
                    company: foods[index]["company"],
                    price: foods[index]["price"],
                  ),
                ),
              ),
              child: Container(
                // height: 120,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 2,
                        offset: Offset(2, 2),
                        color: Colors.grey[400])
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      // backgroundImage:
                      backgroundColor: Colors.orange[100],
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(foods[index]["image"]),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: [
                        Text(
                          "${foods[index]["name"]}",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Wrap(
                      children: [
                        Text(
                          "${foods[index]["company"]}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: foods.length,
      ),
    );
  }
}
