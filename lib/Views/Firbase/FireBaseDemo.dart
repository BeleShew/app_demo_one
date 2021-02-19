import 'package:Flutter/Services/AuthServices.dart';
import 'package:flutter/material.dart';

class FireBaseDemoApp extends StatefulWidget {
  @override
  _FireBaseAppState createState() => _FireBaseAppState();
}

class _FireBaseAppState extends State<FireBaseDemoApp> {
  //final AuthServices _authServices = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Firbase"),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Text("Firbase App")
        // SafeArea(
        //   child: Container(
        //     padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        //     child: RaisedButton(
        //       child: Text("Sign in"),
        //       onPressed: () async {
        //         dynamic result = await _authServices.signInAnon();
        //         if (result == null) {
        //           print("Not Sign In");
        //         } else {
        //           print("Sign in Success");
        //         }
        //       },
        //     ),
        //   ),
        // ),
        );
  }
}
