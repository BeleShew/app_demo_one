import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  //Sign in anonymously
  Future signInAnon() async {
    try {
      UserCredential _result = await _firebaseAuth.signInAnonymously();
      return _result.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
