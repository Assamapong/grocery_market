import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_market/components/signin_screen.dart';

class SignUpScreen extends StatelessWidget {
  final String title;

  SignUpScreen({required this.title});

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
            'Sign up',
            style: TextStyle(fontSize: 40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Have account?'),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SigninScreen(
                        title: 'GroceryMarket',
                      ),
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
