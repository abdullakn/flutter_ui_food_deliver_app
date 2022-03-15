import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/screens/details/widgets/food_details.dart';
import 'package:food_delivery_app/screens/details/widgets/food_image.dart';
import 'package:food_delivery_app/widgets/custom_appbar.dart';

class DetailsPage extends StatelessWidget {
  final Food food;
  const DetailsPage({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(child:SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(leftIcon: Icons.arrow_back_ios_new_outlined, rightIcon:Icons.favorite_outline),
            FoodImage(food:food),
            FoodDetails(food: food)
          ],
        ),
      ) ),
      floatingActionButton: Container(
     
        width: 100,
        height: 56,
        child: RawMaterialButton(
          fillColor: Colors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ),
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.shopping_bag_outlined,color: Colors.black,size: 30,),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
                ),
                child: Text(food.quantity.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
              )

            ],
          ),
          onPressed: (){},
        )),

      );
    
  }
}