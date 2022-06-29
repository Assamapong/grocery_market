import 'package:flutter/material.dart';
import 'package:grocery_market/order.dart';
import 'package:provider/provider.dart';

class ItemCard extends StatelessWidget {
  final Map product;
  late String itemName;
  late String itemSubtitle;
  late AssetImage itemImage;
  ItemCard({required this.product}) {
    itemName = product['itemName'];
    itemSubtitle = product['itemSubtitle'];
    itemImage = product['itemImage'];
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<Order>(context, listen: false).addOrder(product);
        print(Provider.of<Order>(context, listen: false).listOfProduct);
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
