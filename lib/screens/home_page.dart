import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_market/components/categories_section.dart';
import 'package:grocery_market/components/category.dart';
import 'package:grocery_market/components/reusable_card.dart';

import 'package:grocery_market/components/shopping_list.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  HomeScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          FontAwesomeIcons.basketShopping,
          color: Colors.black,
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            ShoppingList(),
            SizedBox(
              height: 15,
            ),
            CategoriesSection()
          ],
        ),
      ),
    );
  }
}
