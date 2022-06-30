import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoggedInUser extends ChangeNotifier {
  LoggedInUser();

  late GoogleSignInAccount loggedInUser;
  late String userFullName;

  String getFullName() {
    return loggedInUser.displayName.toString();
  }

  void setUser(GoogleSignInAccount user) {
    loggedInUser = user;
  }
}
