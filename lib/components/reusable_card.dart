import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color backgroundColorCard;
  final Widget cardChild;
  final double? cardWidth;

  const ReusableCard(
      {required this.backgroundColorCard,
      required this.cardChild,
      this.cardWidth});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: cardWidth,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: backgroundColorCard,
      ),
      child: cardChild,
    );
  }
}
