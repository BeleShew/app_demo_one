import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselPage extends StatelessWidget {
  List image_Crousel = [
    AssetImage("assets/images/imageOne.jpg"),
    AssetImage("assets/images/raphael.jpg"),
    AssetImage("assets/images/cat.jpg"),
    AssetImage("assets/images/girls.jpg"),
    AssetImage("assets/images/laptops.jpg"),
    AssetImage("assets/images/coffe.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              height: 400.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              pauseAutoPlayOnTouch: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              scrollDirection: Axis.horizontal,
            ),
            items: image_Crousel,
          )
        ],
      ),
    );
  }
}
