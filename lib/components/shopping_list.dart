// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:grocery_market/components/shopping_list_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';

class ShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      backgroundColorCard: Color.fromRGBO(236, 242, 211, 1),
      cardChild: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Row(
              children: const [
                Text(
                  'Shopping List',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ShoppingListIcon(
                innerIcon: FontAwesomeIcons.breadSlice,
                colorIcon: Colors.lightGreen,
              ),
              ShoppingListIcon(
                  innerIcon: FontAwesomeIcons.egg, colorIcon: Colors.brown),
              ShoppingListIcon(
                  innerIcon: FontAwesomeIcons.carrot, colorIcon: Colors.orange),
              ShoppingListIcon(
                  innerIcon: FontAwesomeIcons.cheese, colorIcon: Colors.yellow),
              ShoppingListIcon(
                  innerIcon: FontAwesomeIcons.beerMugEmpty,
                  colorIcon: Colors.blue)
            ],
          )
        ],
      ),
    );
  }
}
