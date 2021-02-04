import 'package:Flutter/Controller/CartController.dart';
import 'package:Flutter/Controller/DialogController.dart';
import 'package:Flutter/Controller/GetXDemoController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _SettingsPage();
  }
}

class _SettingsPage extends State<SettingsPage> {
  final settingBuilder = Get.put(DialogController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Obx(
                () {
                  return Text("Count ${settingBuilder.count}");
                  //Center(
                  // child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  // Text("Count ${settingBuilder.in}"),
                  // RaisedButton.icon(
                  //   onPressed: () {},
                  //   label: Text("Click Me"),
                  //   icon: new Icon(Icons.offline_bolt_sharp),
                  // )
                  //],
                  //),
                  // );
                },
              ),
            ],
          ),
        ));
  }
}
