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

class _LoginPage extends State<LoginPage> {
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
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: ShapeDecoration(
              shape: CircleBorder(),
              gradient: LinearGradient(
                  colors: orangeGradients,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
            child: ImageIcon(
              AssetImage("assets/images/cat.jpg"),
              size: 40,
              color: Colors.white,
            ),
          )),
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
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
