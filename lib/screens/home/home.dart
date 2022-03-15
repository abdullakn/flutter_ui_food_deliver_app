import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/screens/home/widgets/food_list.dart';
import 'package:food_delivery_app/screens/home/widgets/food_list_view.dart';
import 'package:food_delivery_app/screens/home/widgets/restaurant_info.dart';
import 'package:food_delivery_app/widgets/custom_appbar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedIndex = 0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();
  @override
  Widget build(BuildContext context) {
    print("render");
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(
              leftIcon: Icons.arrow_back_ios_new_outlined,
              rightIcon: Icons.search),
          RestaurantInfo(),
          FoodList(
              selectedIndex: selectedIndex,
              callback: (int index) {
                setState(() {
                  selectedIndex = index;
                });
                pageController.jumpToPage(index);
              },
              restaurant: restaurant),
          Expanded(
            child: FoodListView(
                selectedIndex: selectedIndex,
                callback: (int index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                pagecontroller: pageController,
                restaurant: restaurant),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count: restaurant.menu.length,
              effect: CustomizableEffect(
                  dotDecoration: DotDecoration(
                    height: 8,
                    width: 8,
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  activeDotDecoration: DotDecoration(
                    height: 10,
                    width: 10,
                    // color: Colors.yellow,
                    borderRadius: BorderRadius.circular(8),
                    dotBorder: DotBorder(
                      width: 4,
                      color: Colors.yellow
                    )
                  )),
                  onDotClicked: (index)=>pageController.jumpToPage(index),
            ),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed:(){},
        backgroundColor: Colors.yellow,
        child: Icon(Icons.shopping_bag_outlined,color: Colors.black,), ),
    );
  }
}
