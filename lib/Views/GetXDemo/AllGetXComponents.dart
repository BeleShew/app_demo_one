import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: _snackBarClicked,
                child: Text("Snack Bar"),
              ),
              RaisedButton(
                onPressed: _dialogBoxClicked,
                child: Text("Dialog box"),
              ),
              RaisedButton(
                onPressed: _bottomSheetClicked,
                child: Text("Bottom Sheet"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _snackBarClicked() {
    Get.snackbar(
      "",
      "",
      mainButton: FlatButton(
          onPressed: () {},
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Ok"),
                  Text("Cancel"),
                ],
              ),
            ),
          )),
      titleText: Text("SnackBar"),
      messageText: Text("First Snack Bar"),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.white,
      shouldIconPulse: true,
    );
  }

  void _dialogBoxClicked() {
    Get.defaultDialog(
      title: "First Dialog box",
      content: Text('this is Getx Dialog'),
      confirm: Text("Ok"),
      cancelTextColor: Colors.amber,
      cancel: Text("Cancel"),
    );
  }

  void _bottomSheetClicked() {
    Get.bottomSheet(
      Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("Sheet One"),
                Text("Sheet Two"),
                Text("Sheet Three"),
                Text("Sheet Four"),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.blue[100],
      useRootNavigator: true,
    );
  }
}
