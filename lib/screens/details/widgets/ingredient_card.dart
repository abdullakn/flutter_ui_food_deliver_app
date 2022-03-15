import 'package:flutter/material.dart';

class IngredientsCard extends StatelessWidget {
  final String image;
  final String text;
  const IngredientsCard({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1), borderRadius: BorderRadius.circular(40)),
      child: Column(
        children: [
          Image.asset(
            image,
            width: 52,
          ),
          Text(text)
        ],
      ),
    );
  }
}
