import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String itemName;
  final int itemPrice;
  final AssetImage itemImage;

  ItemCard(
      {required this.itemName,
      required this.itemPrice,
      required this.itemImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color.fromRGBO(242, 242, 242, 1), width: 2),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //     color: Colors.black54,
        //     blurRadius: 1.0,
        //     offset: Offset(0.0, 0.75),
        //   )
        // ],
      ),
      child: Column(
        children: [
          Image(
            image: itemImage,
            width: 100,
            height: 90,
          ),
          Text(itemName),
          Text('1kg/${itemPrice}B')
        ],
      ),
    );
  }
}
