import 'package:Flutter/Services/AuthServices.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class FireBaseDemoApp extends StatefulWidget {
  @override
  _FireBaseAppState createState() => _FireBaseAppState();
}

class _FireBaseAppState extends State<FireBaseDemoApp> {
  final AuthServices _authServices = AuthServices();

  @override
  Future<void> initState() async {
    // WidgetsFlutterBinding.ensureInitialized();
    // await Firebase.initializeApp();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firbase"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(50),
          child: RaisedButton(
            child: Text("Sign in"),
            onPressed: () async {
              dynamic result = await _authServices.signInAnon();
              if (result == null) {
                print("Not Sign In");
              } else {
                print("Sign in Success");
              }
            },
          ),
        ),
      ),
    );
  }
}
