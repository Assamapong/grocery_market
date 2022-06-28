import 'package:flutter/material.dart';
import 'package:grocery_market/order.dart';
import 'package:grocery_market/screens/category_screen.dart';
import 'package:grocery_market/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Order>(
      create: (context)=> Order(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.white,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            titleTextStyle: TextStyle(color: Colors.black),
          ),
          textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
        ),
        home: HomeScreen(
          title: 'GroceryMarket',
        ),
      ),
    );
  }
}
