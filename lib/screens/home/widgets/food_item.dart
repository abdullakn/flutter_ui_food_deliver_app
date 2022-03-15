import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class FoodItem extends StatelessWidget {
  final Food food;
  const FoodItem({required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            height: 110,
            width: 110,
            child: Image.asset(food.imgurl,fit: BoxFit.fitHeight,),
          ),
          Expanded(child: Container(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
              right: 20,
              
              
            ),
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(food.name,style: TextStyle(fontWeight: FontWeight.bold,height: 1.5),),
                    Icon(Icons.arrow_forward_ios_outlined,size: 15,)
                  ],
                ),
                SizedBox(height: 5,),
                Text(food.desc,style: TextStyle(color: food.highlights?Colors.yellow:Colors.grey.withOpacity(0.3)),),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Text('\$',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                    Text(food.price.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                  ],
                )
              ],
            ),

          )
          )
        ],
      ),
      
    );
  }
}