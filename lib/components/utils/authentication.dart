import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
  static Future<dynamic> loginWithGoogle() async {
    final googleSignIn = GoogleSignIn(scopes: ['email']);
    try {
      final googleSignInAccount = await googleSignIn.signIn();
      if (googleSignInAccount == null) {
        return null;
      }

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
      return googleSignInAccount;
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
      print(content);
    }
  }
}
