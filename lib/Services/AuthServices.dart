import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthServices {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final Future<FirebaseApp> _firebaseApp = Firebase.initializeApp();

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
