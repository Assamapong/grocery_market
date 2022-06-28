import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_market/components/category.dart';
import 'package:grocery_market/components/reusable_card.dart';

import 'package:grocery_market/components/shopping_list.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  HomeScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          FontAwesomeIcons.basketShopping,
          color: Colors.black,
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            ShoppingList(),
            SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 35.0, right: 10),
                  child: Text(
                    'Categories',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Category(
                    categoryBackgroundColor: Color.fromRGBO(247, 221, 220, 1),
                    categoryIcon: FontAwesomeIcons.bacon,
                    title: 'Pork',
                    iconColor: Colors.red,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
