import 'package:flutter/material.dart';

class Order extends ChangeNotifier{
  List<Widget> listOfProduct = [];


  Order();

  void addOrder(Map product){
    listOfProduct.add(ListTile(title: Text(product['itemName']),),);
    notifyListeners();
  }



}