import 'package:flutter/material.dart';

class ShoppingListIcon extends StatelessWidget {
  final IconData innerIcon;
  final Color colorIcon;

  ShoppingListIcon({required this.innerIcon, required this.colorIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        innerIcon,
        color: colorIcon,
      ),
      width: 50,
      height: 50,
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      margin: EdgeInsets.symmetric(horizontal: 10),
    );
  }
}
