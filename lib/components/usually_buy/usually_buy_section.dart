import 'package:flutter/material.dart';
import 'package:grocery_market/components/section.dart';
import 'package:grocery_market/model/product_list.dart';
import 'item_card.dart';

class UsuallyBuySection extends StatelessWidget {
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
