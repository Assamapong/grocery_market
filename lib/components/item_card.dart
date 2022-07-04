import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    var order = Provider.of<Order>(context, listen: false);
    var counter = Provider.of<Order>(context).counter;
    var isProductSelected = counter.containsKey(product);
    return GestureDetector(
      onTap: () {
        order.addOrder(product);
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
            isProductSelected
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          isProductSelected ? counter[product].toString() : ''),
                      GestureDetector(
                        onTap: () {
                          order.removeOrder(product);
                        },
                        child: Container(
                          child: Icon(
                            FontAwesomeIcons.minus,
                            size: 20,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                          margin: EdgeInsets.only(left: 5),
                        ),
                      )
                    ],
                  )
                : Row(),
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
