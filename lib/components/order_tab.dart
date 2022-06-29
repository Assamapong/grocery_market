import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../order.dart';

class OrderTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> listOfOrder;

    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            'Order',
            style: TextStyle(fontSize: 40),
          ),
          Expanded(
            child: ListView(
              children: Provider.of<Order>(context).listOfProduct,
            ),
          )
        ],
      ),
    );
  }
}
