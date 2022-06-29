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
    listOfProduct = [];
    for (var key in counter.keys) {
      listOfProduct.add(
        ListTile(
          title: Text(key["itemName"]),
          subtitle: Text(counter[key].toString()),
        ),
      );
    }
    print(counter);

    notifyListeners();
  }
}
