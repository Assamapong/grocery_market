import 'package:flutter/material.dart';
import 'package:grocery_market/screens/success_screen.dart';
import 'package:provider/provider.dart';

import '../order.dart';

class OrderTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var listOfProduct = Provider.of<Order>(context).listOfProduct;
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            'Your Order',
            style: TextStyle(fontSize: 40),
          ),
          Container(
            height: 70.0 * listOfProduct.length,
            child: ListView(
              children: listOfProduct,
            ),
          ),
          listOfProduct.isNotEmpty
              ? ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SuccessScreen(),
                      ),
                    );
                  },
                  child: Text('Confirm Order'),
                )
              : Container(),
        ],
      ),
    );
  }
}
