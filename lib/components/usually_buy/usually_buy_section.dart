import 'package:flutter/material.dart';
import 'package:grocery_market/components/section.dart';
import 'package:grocery_market/model/product_list.dart';
import 'item_card.dart';

class UsuallyBuySection extends StatelessWidget {
  // var usually_buy = [
  //   ItemCard(
  //     product: {
  //       "itemId": 6,
  //       "itemName": 'Salmon',
  //       "itemSubtitle": "1kg/235B",
  //       "itemImage": AssetImage("images/salmon-fillet.jpeg"),
  //       "category": "Fish"
  //     },
  //   ),
  //   ItemCard(
  //     product: {
  //       "itemId": 4,
  //       "itemName": 'Asparagus',
  //       "itemSubtitle": "1kg/25B",
  //       "itemImage": AssetImage("images/asparagus.jpeg"),
  //       "category": "Vegetables"
  //     },
  //   )
  // ];

  List<Widget> getUsuallyBuyProducts() {
    List<Widget> usually_buy = [];
    productList.where((product) => product["count"] > 8).forEach((product) {
      usually_buy.add(ItemCard(product: product));
    });
    return usually_buy;
  }

  @override
  Widget build(BuildContext context) {
    return Section(
        sectionTitle: 'Usually buy', sectionChild: getUsuallyBuyProducts());
  }
}
