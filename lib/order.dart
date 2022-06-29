import 'package:flutter/material.dart';

class Order extends ChangeNotifier {
  Order();

  List<Widget> listOfProduct = [];
  Map counter = {};
  double totalPrice = 0;

  void addOrder(Map product) {
    if (counter.containsKey(product)) {
      counter[product] += 1;
    } else {
      counter[product] = 1;
    }
    calculateTotalPrice();
    updateListTile();
    notifyListeners();
  }

  void removeOrder(Map product) {
    if (counter.containsKey(product)) {
      if (counter[product] > 1) {
        counter[product] -= 1;
      } else {
        counter.remove(product);
      }
    }
    calculateTotalPrice();
    updateListTile();
    notifyListeners();
  }

  void updateListTile() {
    listOfProduct = [];
    for (var key in counter.keys) {
      listOfProduct.add(
        ListTile(
          title: Text(
            key["itemName"] + '  (x' + counter[key].toString() + ')',
            style: TextStyle(fontSize: 20),
          ),
          trailing: Text(
            (key["price"] * counter[key]).toDouble().toString() + ' ฿',
            style: TextStyle(fontSize: 20),
          ),
        ),
      );
    }
  }

  void calculateTotalPrice() {
    totalPrice = 0;
    counter.forEach((product, count) {
      totalPrice += product["price"] * count;
    });
  }

  void clearOrder() {
    counter = {};
    listOfProduct = [];
    totalPrice = 0;
    notifyListeners();
  }
}
