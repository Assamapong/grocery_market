import 'package:flutter/material.dart';

class Order extends ChangeNotifier {
  Order();

  List<Widget> listOfProduct = [];
  Map counter = {};

  void addOrder(Map product) {
    if (counter.containsKey(product)) {
      counter[product] += 1;
    } else {
      counter[product] = 1;
    }
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
    updateListTile();
    notifyListeners();
  }

  void updateListTile() {
    listOfProduct = [];
    for (var key in counter.keys) {
      listOfProduct.add(
        ListTile(
          title: Text(key["itemName"]),
          subtitle: Text(counter[key].toString()),
        ),
      );
    }
  }
}
