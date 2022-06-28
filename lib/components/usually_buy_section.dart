import 'package:flutter/material.dart';
import 'package:grocery_market/components/section.dart';

class UsuallyBuySection extends StatelessWidget {
  var usually_buy = [
    Container(
      child: Column(
        children: [
          Image(
            image: AssetImage('images/salmon-fillet.jpeg'),
            width: 100,
          ),
          Text('Salmon fillet'),
          Text('1kg/18B')
        ],
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Section(sectionTitle: 'Usually buy', sectionChild: usually_buy);
  }
}
