import 'package:flutter/material.dart';
import 'package:grocery_market/components/section.dart';
import 'item_card.dart';

class UsuallyBuySection extends StatelessWidget {
  var usually_buy = [
    ItemCard(
      itemName: 'Salmon fillet',
      itemSubtitle: '1kg/18B',
      itemImage: AssetImage('images/salmon-fillet.jpeg'),
    ),
    ItemCard(
      itemName: 'Asparagus',
      itemSubtitle: '1kg/16B',
      itemImage: AssetImage('images/asparagus.jpeg'),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Section(sectionTitle: 'Usually buy', sectionChild: usually_buy);
  }
}
