// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grocery_market/components/shopping_list/shopping_list_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_market/user.dart';
import 'package:provider/provider.dart';
import '../reusable_card.dart';

class ShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String firstName =
        Provider.of<LoggedInUser>(context).getFullName().split(' ')[0];
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ReusableCard(
        backgroundColorCard: Color.fromRGBO(236, 242, 211, 1),
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Row(
                children: [
                  Text(
                    'Hello! $firstName.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                children: [
                  Text(
                    'What would you like to buy today?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
                    innerIcon: FontAwesomeIcons.carrot,
                    colorIcon: Colors.orange),
                ShoppingListIcon(
                    innerIcon: FontAwesomeIcons.cheese,
                    colorIcon: Colors.yellow),
                ShoppingListIcon(
                    innerIcon: FontAwesomeIcons.beerMugEmpty,
                    colorIcon: Colors.blue)
              ],
            )
          ],
        ),
      ),
    );
  }
}
