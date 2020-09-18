import 'package:flutter/material.dart';
import 'package:food_App/category.dart';

class ScrolLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Categoryitem(
            isActive: true,
            text: "Combo Meal",
            goto: null,
          ),
          Categoryitem(
            isActive: false,
            text: "Chicken",
            goto: null,
          ),
          Categoryitem(
            isActive: false,
            text: "Beverages",
            goto: null,
          ),
          Categoryitem(
            isActive: false,
            text: "Cakes",
            goto: null,
          ),
          Categoryitem(
            isActive: false,
            text: "Ice-Cream",
            goto: null,
          ),
          Categoryitem(
            isActive: false,
            text: "Combo Meal",
            goto: null,
          )
        ],
      ),
    );
  }
}
