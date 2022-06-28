import 'package:flutter/material.dart';
import 'package:grocery_market/components/section.dart';
import 'item_card.dart';

class UsuallyBuySection extends StatelessWidget {
  var usually_buy = [
    ItemCard(
      itemName: 'Salmon fillet',
      itemPrice: 18,
      itemImage: AssetImage('images/salmon-fillet.jpeg'),
    ),
    ItemCard(
      itemName: 'Asparagus',
      itemPrice: 16,
      itemImage: AssetImage('images/asparagus.jpeg'),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Section(sectionTitle: 'Usually buy', sectionChild: usually_buy);
  }
}
