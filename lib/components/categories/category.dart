import 'package:flutter/material.dart';
import 'package:grocery_market/components/reusable_card.dart';

class Category extends StatelessWidget {
  final Color categoryBackgroundColor;
  final IconData categoryIcon;
  final String title;
  final Color iconColor;

  Category(
      {required this.categoryBackgroundColor,
      required this.categoryIcon,
      required this.title,
      required this.iconColor});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("$title tabbed");
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: ReusableCard(
          cardWidth: 150,
          backgroundColorCard: categoryBackgroundColor,
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                categoryIcon,
                color: iconColor,
                size: 50,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
