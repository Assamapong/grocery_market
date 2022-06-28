import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color backgroundColorCard;
  final Widget cardChild;

  ReusableCard({required this.backgroundColorCard, required this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: backgroundColorCard,
      ),
      child: cardChild,
    );
  }
}
