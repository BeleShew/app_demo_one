import 'package:Flutter/Helper/InputWidget.dart';
import 'package:Flutter/Helper/roundedRectButton.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

const List<Color> orangeGradients = [
  Color(0xFFFF9844),
  Color(0xFFFE8853),
  Color(0xFFFD7267),
];
const List<Color> aquaGradients = [
  Color(0xFF5AEAF1),
  Color(0xFF8EF7DA),
];
const List<Color> signInGradients = [
  Color(0xFF0EDED2),
  Color(0xFF03A0FE),
];

const List<Color> signUpGradients = [
  Color(0xFFFF9945),
  Color(0xFFFc6076),
];

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Login'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                new Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    //Image.asset('assets/collaboration.png', width: MediaQuery.of(context).size.width/1.5,),
                    WavyHeader(),
                    new Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      height: 150.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new AssetImage(
                            "assets/images/cat.jpg",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 40, bottom: 10),
                            child: Text(
                              "Email",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFF999A9A)),
                            ),
                          ),
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              InputWidget(30.0, 0.0, "Beleshewa@gmail.com"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: Padding(
                                    padding: EdgeInsets.only(top: 40),
                                    child: Text(
                                      'Enter your email to continue...',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                          color: Color(0xFFA0A0A0),
                                          fontSize: 12),
                                    ),
                                  )),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: ShapeDecoration(
                                      shape: CircleBorder(),
                                      gradient: LinearGradient(
                                        colors: signInGradients,
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(bottom: 50),
                    // ),
                    roundedRectButton(
                        "Let's get Started", signInGradients, false),
                    roundedRectButton(
                        "Create an Account", signUpGradients, false),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

class WavyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TopWaveClipper(),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: orangeGradients,
              begin: Alignment.topLeft,
              end: Alignment.center),
        ),
        height: MediaQuery.of(context).size.height / 2.5,
      ),
    );
  }
}

class TopWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // This is where we decide what part of our image is going to be visible.
    var path = Path();
    path.lineTo(0.0, size.height);

    //creating first curver near bottom left corner
    var firstControlPoint = new Offset(size.width / 7, size.height - 30);
    var firstEndPoint = new Offset(size.width / 6, size.height / 1.5);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    //creating second curver near center
    var secondControlPoint = Offset(size.width / 5, size.height / 4);
    var secondEndPoint = Offset(size.width / 1.5, size.height / 5);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    //creating third curver near top right corner
    var thirdControlPoint =
        Offset(size.width - (size.width / 9), size.height / 6);
    var thirdEndPoint = Offset(size.width, 0.0);

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    ///move to top right corner
    path.lineTo(size.width, 0.0);

    ///finally close the path by reaching start point from top right corner
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class WavyFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: FooterWaveClipper(),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: aquaGradients,
              begin: Alignment.center,
              end: Alignment.bottomRight),
        ),
        height: MediaQuery.of(context).size.height / 3,
      ),
    );
  }
}

class FooterWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.lineTo(0.0, size.height - 60);
    var secondControlPoint = Offset(size.width - (size.width / 6), size.height);
    var secondEndPoint = Offset(size.width, 0.0);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class YellowCircleClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return null;
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}

class CircleYellow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0.0, 210.0),
      child: Material(
        color: Colors.yellow,
        child: Padding(padding: EdgeInsets.all(140)),
        shape: CircleBorder(side: BorderSide(color: Colors.white, width: 15.0)),
      ),
    );
  }
}

class CirclePink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-70.0, 90.0),
      child: Material(
        color: Colors.pink,
        child: Padding(padding: EdgeInsets.all(120)),
        shape: CircleBorder(side: BorderSide(color: Colors.white, width: 15.0)),
      ),
    );
  }
}
