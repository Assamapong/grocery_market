import 'package:flutter/material.dart';
import 'package:grocery_market/components/shopping_list/shopping_list.dart';
import 'package:grocery_market/components/usually_buy/usually_buy_section.dart';

import 'categories/categories_section.dart';

class HomeTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ShoppingList(),
          SizedBox(
            height: 20,
          ),
          CategoriesSection(),
          SizedBox(
            height: 20,
          ),
          UsuallyBuySection()
        ],
      ),
    );
  }
}
