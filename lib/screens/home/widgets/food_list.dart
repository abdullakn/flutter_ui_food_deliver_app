import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/restaurant.dart';

class FoodList extends StatelessWidget {
  final int selectedIndex;
  final Function callback;
  final Restaurant restaurant;
  const FoodList(
      {required this.selectedIndex,
      required this.callback,
      required this.restaurant});

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 25),
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => callback(index),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selectedIndex == index
                          ? Colors.yellow
                          : Colors.white),
                  child: Text(
                    category[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 20,
              ),
          itemCount: category.length),
    );
  }
}
