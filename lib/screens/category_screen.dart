import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_market/components/categories/category.dart';
import 'package:grocery_market/components/usually_buy/item_card.dart';

class CategoryScreen extends StatelessWidget {
  static const id = 'category_screen';

  final String title;
  final Map colorMap = {
    'Pork': Colors.red,
    'Fish': Colors.blue,
    'Bread': Colors.brown,
    'Vegetables': Colors.green
  };

  CategoryScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorMap[title],
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.white,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Image(
                  image: AssetImage(
                    'images/broccoli.webp',
                  ),
                  width: 150,
                ),
                Text('Broccoli'),
                Text('1kg/1.6B'),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.shop),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.newspaper),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.person),
            label: 'Account',
          ),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
    );
  }
}
