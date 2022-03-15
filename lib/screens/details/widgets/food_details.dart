import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/screens/details/widgets/food_quantity.dart';
import 'package:food_delivery_app/screens/details/widgets/ingredient_card.dart';

class FoodDetails extends StatelessWidget {
  final Food food;
  const FoodDetails({required this.food});

  @override
  Widget build(BuildContext context) {
    final ingredients = food.ingredients[0].keys.toList();
    final ingredientImage = food.ingredients[0].values.toList();
    // print(ingredients);
    // print(ingredientImage);
    return Container(
      padding: EdgeInsets.all(25),
      color: Colors.white,
      child: Column(
        children: [
          Text(
            food.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconText(
                  Icons.access_time_outlined, Colors.blue, food.waitTime),
              _buildIconText(
                  Icons.star_outlined, Colors.amber, food.score.toString()),
              _buildIconText(
                  Icons.local_fire_department_outlined, Colors.red, food.cal),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          FoodQuantity(food: food),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                'Ingredients',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => IngredientsCard(
                    image: ingredientImage[index], text: ingredients[index]),
                separatorBuilder: (_, index) => SizedBox(
                      width: 15,
                    ),
                itemCount: ingredients.length),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const Text(
                'About',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            
            ],
          ),
          SizedBox(height: 20,),
          Text(food.about,style: TextStyle(wordSpacing: 1.2,height: 1.5,fontSize: 16),)
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text(
          icon == Icons.access_time_outlined ? '${text} min' : text,
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
