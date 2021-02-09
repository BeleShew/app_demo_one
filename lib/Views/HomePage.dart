import 'package:Flutter/Views/AboutPage.dart';
import 'package:Flutter/Views/Home.dart';
import 'package:Flutter/Views/LoginPage.dart';
import 'package:Flutter/Views/MainNavigation.dart';
import 'package:Flutter/Views/SettingsPage.dart';
import 'package:flutter/material.dart';

import '../PlaceholderWidget.dart';

class HomePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green)
  ];

  final List<Widget> _pageList = [
    Home(),
    AboutPage(),
    SettingsPage(),
    LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home Page'),
      //   backgroundColor: Colors.green,
      //   centerTitle: true,
      // ),
      // body: _children[_currentIndex],
      //drawer: MainNavigation(),

      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        backgroundColor: Colors.green,
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.login),
            label: 'Login',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
