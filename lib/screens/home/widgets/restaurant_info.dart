import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/restaurant.dart';

class RestaurantInfo extends StatelessWidget {
  final restaurant = Restaurant.generateRestaurant();
  RestaurantInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant.name,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Text(restaurant.waitTime,style: TextStyle(color: Colors.white),)),
                        SizedBox(width: 10,),
                      Text(restaurant.distance,style: TextStyle(fontSize: 16,color: Colors.grey.withOpacity(0.4)),),
                      SizedBox(width: 10,),
                      Text(restaurant.label,style: TextStyle(fontSize: 16,color: Colors.grey.withOpacity(0.4)))
                    ],
                  )
                ],
              ),
              // Container(
              //   height: 80,
              //   width: 80,
              //   decoration: BoxDecoration(
              //     color: Colors.pink,
              //     borderRadius: BorderRadius.circular(50)
              //   ),
              //   child:Image.asset(restaurant.logoUrl,),
              // )
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(restaurant.logoUrl,width: 80,),
              )
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('"${restaurant.desc}"',style: TextStyle(fontSize: 16),),
              Row(
                children: [
                  Icon(Icons.star_outline,color: Colors.yellow,),
                  SizedBox(width: 5,),
                  Text(restaurant.rating.toString(),style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
