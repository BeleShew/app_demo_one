import 'package:Flutter/Controller/DialogController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _SettingsPage();
  }
}

class _SettingsPage extends State<SettingsPage> {
  //final settingBuilder = Get.put(DialogController());
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
              Text("Count"),
              RaisedButton.icon(
                onPressed: () {},
                label: Text("Click Me"),
                icon: new Icon(Icons.offline_bolt_sharp),
              ),
              // Obx(() {
              //   return Text(
              //     'Total amount:',
              //     style: TextStyle(fontSize: 32, color: Colors.black),
              //   );
              // }),
              Obx(() => Text("obx")),
              SizedBox(height: 25),
            ],
          ),
        ));
  }
}
