import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselViewDemo extends StatefulWidget {
  @override
  _CarouselViewDemoState createState() => _CarouselViewDemoState();
}

class _CarouselViewDemoState extends State<CarouselViewDemo> {
  @override
  Widget build(BuildContext context) {
    Widget image_Crousel = new Container(
      height: 200,
      //child:  Carousel(),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel View'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                //onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                Container(
                  width: 300,
                  margin: EdgeInsets.all(5.0),
                  child: Center(
                    child: Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("First"),
                        Text("Second"),
                        Text("Third"),
                      ],
                    )),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: AssetImage("assets/images/imageOne.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
