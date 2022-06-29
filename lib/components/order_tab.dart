import 'dart:math';

import 'package:flutter/material.dart';
import 'package:grocery_market/components/bottom_button.dart';
import 'package:grocery_market/screens/success_screen.dart';
import 'package:provider/provider.dart';

import '../order.dart';

class OrderTab extends StatefulWidget {
  @override
  State<OrderTab> createState() => _OrderTabState();
}

class _OrderTabState extends State<OrderTab> {
  var items = ['Cash on delivery', 'Debit/Credit card', 'Paypal'];
  String dropDownValue = 'Cash on delivery';

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
              listOfProduct.isNotEmpty ? Container(
                height: min(60.0 * listOfProduct.length, 400),
                child: ListView(
                  children: listOfProduct,
                ),
              ) : Container(child: Center(child: Text('Your order is now empty', style: TextStyle(fontSize: 15,),),),height: 500,),
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

          listOfProduct.isNotEmpty ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Please select payment method', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

                    DropdownButton(isExpanded: true,items: items.map((item){
                      return DropdownMenuItem(child: Text(item, style: TextStyle(fontSize: 18),), value: item,);
                    }).toList(), onChanged: (String? newValue){
                      setState((){
                        dropDownValue = newValue!;
                      });
                    }, value: dropDownValue, icon: Icon(Icons.keyboard_arrow_down),)
                  ],
                ),
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
          ) : Column(),
        ],
      ),
    );
  }
}
