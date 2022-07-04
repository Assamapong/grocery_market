import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_market/components/SocialButton.dart';
import 'package:grocery_market/screens/main_menu.dart';
import 'package:grocery_market/screens/signup_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SigninScreen extends StatelessWidget {
  final String title;

  SigninScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    Future<UserCredential> _signInWithGoogle() async {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithCredential(credential);
    }

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
                TextField(),
                SocialButton(
                    buttonColor: Colors.green,
                    buttonLogo: AssetImage('images/google_logo.png'),
                    buttonText: 'Login with Google',
                    ontap: () async {
                      await _signInWithGoogle();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MainMenu(title: 'Grocery Market'),
                        ),
                      );
                    }),
                SocialButton(
                    buttonColor: Colors.blue,
                    buttonLogo: AssetImage('images/google_logo.png'),
                    buttonText: 'Login with Facebook',
                    ontap: () {}),
                SocialButton(
                    buttonColor: Colors.green,
                    buttonLogo: AssetImage('images/google_logo.png'),
                    buttonText: 'Login with Google',
                    ontap: () {})
              ],
            ),
          )
        ],
      ),
    );
  }
}
