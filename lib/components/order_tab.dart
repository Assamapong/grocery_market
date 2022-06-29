import 'dart:math';

import 'package:flutter/material.dart';
import 'package:grocery_market/components/bottom_button.dart';
import 'package:grocery_market/screens/success_screen.dart';
import 'package:provider/provider.dart';

import '../order.dart';

class OrderTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var listOfProduct = Provider.of<Order>(context).listOfProduct;
    var totalPrice = Provider.of<Order>(context).totalPrice;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'Your Order',
                style: TextStyle(fontSize: 40),
              ),
              Container(
                height: min(60.0 * listOfProduct.length, 400),
                child: ListView(
                  children: listOfProduct,
                ),
              ),
              listOfProduct.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Price',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            totalPrice.toString() + '฿',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    )
                  : Container()
            ],
          ),
          listOfProduct.isNotEmpty
              ? BottomButton(
                  title: 'Confirm Order',
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SuccessScreen(),
                      ),
                    );
                  },
                )
              : Expanded(
                  child: Center(
                    child: Text(
                      'Your order is now empty',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
