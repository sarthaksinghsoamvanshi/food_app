import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final image;
  final name;
  final company;
  final price;

  const DetailsScreen({
    this.image,
    this.name,
    this.company,
    this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: Navigator.of(context).pop,
        ),
        elevation: 0,
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
              icon: Icon(
                Icons.reply,
                color: Colors.white,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(Icons.more_vert, color: Colors.white), onPressed: null)
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                // color: Colors.amber,
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    // color: Colors.orange,
                    image: DecorationImage(
                  image: AssetImage(image),
                )),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.grey),
                          SizedBox(width: 10),
                          Text(
                            company,
                            style: TextStyle(color: Colors.grey, fontSize: 17),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.amber, size: 20),
                                  Icon(Icons.star,
                                      color: Colors.amber, size: 20),
                                  Icon(Icons.star,
                                      color: Colors.amber, size: 20),
                                  Icon(Icons.star,
                                      color: Colors.amber, size: 20),
                                  Icon(Icons.star,
                                      color: Colors.grey, size: 20),
                                  SizedBox(width: 10),
                                  Text("97 reviews",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 17))
                                ],
                              )
                            ],
                          ),
                          ClipPath(
                            clipper: PriceClipper(),
                            child: Container(
                              padding: EdgeInsets.only(top: 15),
                              height: 66,
                              width: 65,
                              color: Colors.amber,
                              alignment: Alignment.topCenter,
                              child: Text(
                                "\$$price",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                          child: Text(
                        "Nowdays the food  delivery is at risk due to the corona virus pandemic and the virus can be spread by the delivery boys sent to deliver the product and therefore we should order less food and should eat the food that is cooked in house...",
                        style: TextStyle(color: Colors.grey),
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                margin: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_basket,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Order Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              left: 0,
              right: 0,
              bottom: 20)
        ],
      ),
    );
  }
}

class PriceClipper extends CustomClipper<Path> {
  double height = 65;
  double width = 66;
  @override
  getClip(Size size) {
    Path path = Path();

    path.lineTo(0, height - 20);
    path.lineTo(width / 2, height);
    path.lineTo(width, height - 20);
    path.lineTo(width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
