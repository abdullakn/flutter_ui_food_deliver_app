import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class FoodImage extends StatelessWidget {
  final Food food;
  const FoodImage({required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(flex: 1, child: Container()),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                        color: Colors.white),
                  ))
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.all(5),
              width: 250,
              height: 250,
              decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    // offset: Offset(-1,5),
                    blurRadius: 5)
              ]),
              child: Image.asset(
                food.imgurl,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
