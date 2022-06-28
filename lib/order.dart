import 'package:flutter/material.dart';

class Order extends ChangeNotifier{
  List listOfProduct = [];

  Order();

  void addOrder(Map product){
    listOfProduct.add(product);
    notifyListeners();
  }

}