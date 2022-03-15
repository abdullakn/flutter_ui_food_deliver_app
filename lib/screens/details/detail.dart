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
    );
  }
}