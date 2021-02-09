import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: _snackBarClicked,
            child: Text("Snack Bar"),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("Dialog box"),
          ),
        ],
      ),
    );
  }

  void _snackBarClicked() {
    Get.snackbar("Snack Bar", "First Snack Bar");
  }
}
