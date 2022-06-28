import 'package:flutter/material.dart';
import 'package:grocery_market/components/section.dart';

class UsuallyBuySection extends StatelessWidget {
  var usually_buy = [
    Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color.fromRGBO(242, 242, 242, 1), width: 2),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //     color: Colors.black54,
        //     blurRadius: 1.0,
        //     offset: Offset(0.0, 0.75),
        //   )
        // ],
      ),
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
