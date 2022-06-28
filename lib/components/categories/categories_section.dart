import 'package:flutter/material.dart';
import 'package:grocery_market/components/section.dart';
import 'category.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoriesSection extends StatelessWidget {
  var categories = [
    Category(
      categoryBackgroundColor: Color.fromRGBO(247, 221, 220, 1),
      categoryIcon: FontAwesomeIcons.bacon,
      title: 'Pork',
      iconColor: Colors.red,
    ),
    Category(
      categoryBackgroundColor: Color.fromRGBO(217, 230, 250, 1),
      categoryIcon: FontAwesomeIcons.fish,
      title: 'Fish',
      iconColor: Colors.blue,
    ),
    Category(
      categoryBackgroundColor: Color.fromRGBO(249, 227, 196, 1),
      categoryIcon: FontAwesomeIcons.breadSlice,
      title: 'Bread',
      iconColor: Colors.brown,
    ),
    Category(
      categoryBackgroundColor: Color.fromRGBO(236, 242, 211, 1),
      categoryIcon: FontAwesomeIcons.pepperHot,
      title: 'Vegetables',
      iconColor: Colors.green,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Section(sectionTitle: 'Categories', sectionChild: categories);
  }
}
