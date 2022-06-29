import 'package:flutter/material.dart';

class Order extends ChangeNotifier {
  Order();

  List<Widget> listOfProduct = [];

  void addOrder(Map product) {
    listOfProduct.add(
      ListTile(
        title: Text(product['itemName']),
      ),
    );
    notifyListeners();
  }
}
