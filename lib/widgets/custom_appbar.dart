import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;
  // final Function callback;
  const CustomAppBar({required this.leftIcon, required this.rightIcon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildIcon(leftIcon),
         _buildIcon(rightIcon)
          ],
        ),
      ),
    );
  }

  Container _buildIcon(IconData icon) {
    return Container(
            padding: EdgeInsets.all(8),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            child: Icon(icon),
          );
  }
}
