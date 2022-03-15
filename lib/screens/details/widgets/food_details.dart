import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class FoodDetails extends StatelessWidget {
  final Food food;
  const FoodDetails({required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(25),
      color: Colors.white,
      child: Column(
        children: [
          Text(food.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
          
        ],

      ),
      
    );
  }
}