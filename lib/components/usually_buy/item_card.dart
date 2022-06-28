import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String itemName;
  final String itemSubtitle;
  final AssetImage itemImage;

  ItemCard(
      {required this.itemName,
      required this.itemSubtitle,
      required this.itemImage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print(itemName);
      },
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color.fromRGBO(242, 242, 242, 1), width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: itemImage,
              width: 100,
              height: 90,
            ),
            Text(itemName),
            Text(itemSubtitle)
          ],
        ),
      ),
    );
  }
}
