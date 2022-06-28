import 'package:flutter/material.dart';
import 'package:grocery_market/components/reusable_card.dart';
import 'package:grocery_market/screens/category_screen.dart';
import 'package:grocery_market/model/list_item_in_category.dart';
import '../usually_buy/item_card.dart';

class Category extends StatelessWidget {
  final Color categoryBackgroundColor;
  final IconData categoryIcon;
  final String title;
  final Color iconColor;

  Category(
      {required this.categoryBackgroundColor,
      required this.categoryIcon,
      required this.title,
      required this.iconColor});

  List<Widget> setUpCategoryScreen(){
    List<Widget> gridViewChild = [];
    List selectedList;
    switch(title){
      case 'Vegetables':
        selectedList = vegetableList;
        break;
      case 'Pork':
        selectedList = porkList;
        break;
      case 'Fish':
        selectedList = fishList;
        break;
      default:
        selectedList = [];
        break;
    }

    for(var i = 0; i < selectedList.length; i++){
      gridViewChild.add(ItemCard(
        itemName: selectedList[i]["itemName"],
        itemSubtitle: selectedList[i]["itemSubtitle"],
        itemImage: AssetImage(
          selectedList[i]["itemImage"],
        ),
      ),
      );
    }
    return gridViewChild;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryScreen(
              title: title,
              gridViewChild: setUpCategoryScreen(),
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: ReusableCard(
          cardWidth: 150,
          backgroundColorCard: categoryBackgroundColor,
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                categoryIcon,
                color: iconColor,
                size: 50,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
