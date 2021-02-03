import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Login Page"),
            RaisedButton.icon(
              onPressed: () {},
              label: Text("Click Me"),
              icon: new Icon(Icons.offline_bolt_sharp),
            )
          ],
        ),
      ),
    );
  }
}
