import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grocery_market/screens/signup_screen.dart';
import 'package:grocery_market/screens/main_menu.dart';

class SigninScreen extends StatefulWidget {
  final String title;

  SigninScreen({required this.title});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  var loading = false;
  void _loginWithGoogle() async {
    final googleSignIn = GoogleSignIn(scopes: ['email']);
    try {
      final googleSignInAccount = await googleSignIn.signIn();
      if (googleSignInAccount == null) {
        return;
      }
      setState(() {
        loading = true;
      });
      final googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken);
      await FirebaseAuth.instance.signInWithCredential(credential);
      // await FirebaseFirestore.instance.collection('user').add({
      //   'email': googleSignInAccount.email,
      //   'imageUrl': googleSignInAccount.photoUrl,
      //   'name': googleSignInAccount.displayName
      // });
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (builder) => MainMenu(
              title: 'GroceryMarket',
            ),
          ),
          (route) => false);
    } on FirebaseAuthException catch (e) {
      var content = '';
      switch (e.code) {
        case 'account-exists-with-different-credential':
          content:
          'This account exists with a different sign in provider';
          break;
        case 'invalid-credential':
          content:
          'Unknown error has occurred';
          break;
        case 'operation-not-allowed':
          content:
          'This operation is not allowed';
          break;
        case 'user-disabled':
          content:
          'The user you tried to log into is disabled';
          break;
        case 'user-not-found':
          content:
          'The user you tried to log into was not found';
          break;
      }
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login with google failed'),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Ok'),
            )
          ],
        ),
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login with google failed'),
          content: Text("An unknown error occurred"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Ok'),
            )
          ],
        ),
      );
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return !loading
        ? Scaffold(
            appBar: AppBar(
              leading: Icon(
                FontAwesomeIcons.basketShopping,
                color: Colors.black,
              ),
              title: Text(
                widget.title,
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
                      Center(
                        child: TextButton(
                          onPressed: () {
                            _loginWithGoogle();
                          },
                          child: Text(
                            'Login with gmail',
                          ),
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.blueAccent,
                            textStyle: const TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        : Center(
            child: CircularProgressIndicator(),
          );
  }
}