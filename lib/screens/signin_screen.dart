import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_market/screens/signup_screen.dart';

class SigninScreen extends StatelessWidget {
  final String title;

  SigninScreen({required this.title});

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sign in',
            style: TextStyle(fontSize: 40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have account?"),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SignUpScreen(title: 'GroceryMarket'),
                    ),
                  );
                },
                child: Text('Sign in'),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(fontSize: 20),
                ),
                TextField(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Password',
                  style: TextStyle(fontSize: 20),
                ),
                TextField()
              ],
            ),
          )
        ],
      ),
    );
  }
}
