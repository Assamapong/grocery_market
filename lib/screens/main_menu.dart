import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grocery_market/components/signin_screen.dart';
import 'package:grocery_market/components/signup_screen.dart';
import 'package:grocery_market/components/categories/categories_section.dart';
import 'package:grocery_market/components/shopping_list/shopping_list.dart';
import 'package:grocery_market/components/usually_buy/usually_buy_section.dart';
import 'package:grocery_market/order.dart';
import 'package:provider/provider.dart';

import '../components/home_tab.dart';
import '../components/order_tab.dart';

class MainMenu extends StatefulWidget {
  final String title;

  MainMenu({required this.title});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = [
    HomeTab(),
    OrderTab(),
    Text('Account page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          FontAwesomeIcons.basketShopping,
          color: Colors.black,
        ),
        title: Text(
          widget.title,
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: () async {
                final GoogleSignIn googleSignIn = GoogleSignIn();

                try {
                  await googleSignIn.signOut();
                  await FirebaseAuth.instance.signOut();
                } catch (e) {
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   Authentication.customSnackBar(
                  //     content: 'Error signing out. Try again.',
                  //   ),
                  // );
                  print(e);
                }
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (builder) =>
                            SigninScreen(title: 'GroceryMarket')));
              },
              child: Icon(
                FontAwesomeIcons.doorOpen,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: _widgetOptions.elementAt(
        (_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.shop),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.newspaper),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.person),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

// static Future<void> signOut({required BuildContext context}) async {
// final GoogleSignIn googleSignIn = GoogleSignIn();
//
// try {
// await googleSignIn.signOut();
// await FirebaseAuth.instance.signOut();
// } catch (e) {
// ScaffoldMessenger.of(context).showSnackBar(
// Authentication.customSnackBar(
// content: 'Error signing out. Try again.',
// ),
// );
// }
// }
