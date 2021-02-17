import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Views/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        canvasColor: Colors.amber[50],
      ),
      //home: MyHomePage(title: 'Flutter Demo'),
      home: HomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
      } else if (_selectedIndex == 1) {
        Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => new AboutPage(),
            ));
      }
    });
  }
 
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              "Belachew",
              style: TextStyle(fontFamily: 'Norican', fontSize: 20),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            label: 'Favorites',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'Music',
            icon: Icon(Icons.music_note),
          ),
          BottomNavigationBarItem(
            label: 'Places',
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            label: 'News',
            icon: Icon(Icons.library_books),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}

class AboutPage extends StatefulWidget {
  const AboutPage({Key key, int index}) : super(key: key);
  _AboutPage createState() => _AboutPage();
}

class _AboutPage extends State<AboutPage> {
  @override
  Widget build(BuildContext ctxt) {
    //final int todo = ModalRoute.of(ctxt).settings.arguments;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("About Page"),
      ),
      body: Padding(
        padding: EdgeInsets.zero,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton.icon(
              icon: Icon(
                Icons.access_alarms,
                color: Colors.red,
              ),
              hoverColor: Colors.green,
              label: Text(
                'Ok',
                style: TextStyle(
                  fontFamily: 'Norican',
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
              color: Colors.amber,
              onPressed: () {},
            ),
            Image(
              image: AssetImage('assets/images/imageOne.jpg'),
              fit: BoxFit.fitHeight,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(
                "Belachew",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 18, color: Colors.blueGrey),
              ),
              accountEmail: new Text(
                'bele@gmail.com',
                style: TextStyle(fontSize: 18, color: Colors.blueGrey),
              ),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.green,
                child: new Icon(
                  Icons.account_box_rounded,
                  size: 60,
                ),
              ),
              decoration: BoxDecoration(color: Colors.amber),
            ),
            ListTile(
              title: Text("Home"),
              leading: new Icon(Icons.home),
              tileColor: Colors.blueGrey,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Add"),
              leading: new Icon(
                Icons.add_box,
                size: 30,
              ),
              tileColor: Colors.blueGrey,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Booking"),
              leading: new Icon(Icons.book_online),
              tileColor: Colors.blueGrey,
              selectedTileColor: Colors.amber,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            new Divider(),
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              tileColor: Colors.blueGrey,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("About"),
              leading: Icon(Icons.add_box_outlined),
              tileColor: Colors.blueGrey,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
