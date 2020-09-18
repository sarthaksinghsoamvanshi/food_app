import 'package:flutter/material.dart';
class Categoryitem extends StatelessWidget {
  final isActive;
  final text;
  final goto;
  const Categoryitem({
    Key key, this.isActive, this.text, this.goto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: goto,
          child: Container(
            // alignment: Alignment.topCenter,
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(text,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(color: isActive?Colors.amber:Colors.white),
              height: 3,
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}
