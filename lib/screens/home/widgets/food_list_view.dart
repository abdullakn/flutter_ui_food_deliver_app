import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/screens/details/detail.dart';
import 'package:food_delivery_app/screens/home/widgets/food_item.dart';

class FoodListView extends StatelessWidget {
  final int selectedIndex;
  final Function callback;
  final PageController pagecontroller;
  final Restaurant restaurant;
  const FoodListView({required this.selectedIndex,required this.callback,required this.pagecontroller,required this.restaurant});

  @override
  Widget build(BuildContext context) {
    
    final category=restaurant.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pagecontroller,
        onPageChanged: (selectedIndex)=>callback(selectedIndex),
        children: 
          category.map((e) => ListView.separated(
            itemBuilder: (context,index)=>GestureDetector(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DetailsPage(food: restaurant.menu[category[selectedIndex]]![index])));
            },child: FoodItem(food: restaurant.menu[category[selectedIndex]]![index])),
             separatorBuilder: (_,index)=>SizedBox(height: 15,), 
             itemCount: restaurant.menu[category[selectedIndex]]!.length)).toList()
          // category.map((e) => ListView.separated(
          //   itemBuilder: (context,index)=>FoodItem(food: restaurant.menu[category[selectedIndex]]![index]), 
          //   separatorBuilder:(_,index)=>SizedBox(height: 10,),
          //    itemCount: restaurant.menu[category[selectedIndex]]!.length)).toList()
         
        
      ),
      
    );
  }
}