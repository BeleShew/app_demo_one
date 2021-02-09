import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselViewDemo extends StatefulWidget {
  @override
  _CarouselViewDemoState createState() => _CarouselViewDemoState();
}

class _CarouselViewDemoState extends State<CarouselViewDemo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            height: 100.0,
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
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://d3t32hsnjxo7q6.cloudfront.net/i/c924006882e8e313d445a3a5394e4729_ra,w158,h184_pa,w158,h184.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
