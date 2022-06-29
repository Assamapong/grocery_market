import 'package:flutter/material.dart';
import 'reusable_card.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final void Function()? ontap;

  BottomButton({required this.title, this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: ReusableCard(
        cardHeight: 80,
        backgroundColorCard: Color.fromRGBO(30, 42, 73, 1),
        cardChild: Center(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
