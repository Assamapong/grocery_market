import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grocery_market/components/signup_screen.dart';
import 'package:grocery_market/order.dart';
import 'package:grocery_market/screens/category_screen.dart';
import 'package:grocery_market/screens/main_menu.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'components/signin_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _initialization = Firebase.initializeApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ChangeNotifierProvider<Order>(
            create: (context) => Order(),
            child: MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primaryColor: Colors.white,
                appBarTheme: AppBarTheme(
                  color: Colors.white,
                  titleTextStyle: TextStyle(color: Colors.black),
                ),
                textTheme: GoogleFonts.montserratTextTheme(
                    Theme.of(context).textTheme),
              ),
              home: SigninScreen(title: 'GroceryMarket'),
            ),
          );
        });
  }
}

// MainMenu(
// title: 'GroceryMarket',
// )
