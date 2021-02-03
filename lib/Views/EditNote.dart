import 'package:flutter/material.dart';

class EditNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text("Warning"),
        content: Text("Are you sure to delete this item"),
        actions: <Widget>[
          FlatButton(
            onPressed: () => {Navigator.of(context).pop(true)},
            child: Text("Ok"),
          ),
          FlatButton(
            onPressed: () => {Navigator.of(context).pop(false)},
            child: Text("Cancel"),
          ),
        ]);
  }
}
