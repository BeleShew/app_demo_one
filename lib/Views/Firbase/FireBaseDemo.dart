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
  void initState() {
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
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: Text(
              "Logout",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          )
        ],
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
                print("Sign in Success");
              }
            },
          ),
        ),
      ),
    );
  }
}
