import 'package:Flutter/Controller/DialogController.dart';
import 'package:Flutter/Helper/roundedRectButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _SettingsPage();
  }
}

class _SettingsPage extends State<SettingsPage> {
  static const List<Color> signInGradients = [
    Color(0xFF0EDED2),
    Color(0xFF03A0FE),
  ];
  final settingBuilder = Get.put(DialogController());
  List<String> textFields = ["One", "two", "Three"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("Logout"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Language",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("About"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("Link"),
                        ),
                      ],
                    ),
                  ),
                ),
              ];
            },
            onSelected: (value) {
              print("value:$value");
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Count"),
                RaisedButton.icon(
                  onPressed: () {},
                  label: Text("Click Me"),
                  icon: new Icon(Icons.offline_bolt_sharp),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: new TextField(
                    autofillHints: textFields,
                    decoration: InputDecoration(
                      //border: InputBorder.none,
                      hintText: 'Email ID',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      labelText: "Email",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: new TextField(
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      labelText: "Full Name",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: new TextField(
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      labelText: "Phone Number",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: new TextField(
                    decoration: InputDecoration(
                      hintText: 'Address',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      labelText: "Address",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: roundedRectButton("Continue", signInGradients, false),
                ),
                // SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void clicked(BuildContext context, String s) {}
}
