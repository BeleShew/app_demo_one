import 'package:Flutter/Views/LoginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'GetXDemo/AllGetXComponents.dart';

class MainNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://d3t32hsnjxo7q6.cloudfront.net/i/991799d3e70b8856686979f8ff6dcfe0_ra,w158,h184_pa,w158,h184.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Text(
                    'Belachew',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    'bele@gmail.com',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              ListTile(
                  leading: Icon(Icons.perm_identity),
                  title: Text(
                    'Profile',
                    style: TextStyle(fontSize: 16),
                  ),
                  onTap: () {
                    Get.to(LoginPage());
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => LoginPage()));
                  }),
              ListTile(
                leading: Icon(Icons.account_balance_outlined),
                title: Text(
                  'Account Balance',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.info_outline),
                title: Text(
                  'About',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.room_rounded),
                title: Text(
                  'Location',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.label_off),
                title: Text(
                  'No updates',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.add_alert),
                title: Text(
                  'Updates',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Version',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.navigate_next_outlined),
                title: Text(
                  'GetX Demo',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Get.to(GetXDemo());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
