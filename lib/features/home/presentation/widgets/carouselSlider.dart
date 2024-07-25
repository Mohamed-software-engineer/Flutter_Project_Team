import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  final List<Widget> _ImAgeList = [
    ClipRRect(borderRadius: BorderRadius.circular(20),
        child: Image.asset("assets/1.jpeg")),
    ClipRRect(borderRadius: BorderRadius.circular(20),
        child: Image.asset("assets/2.jpeg")),
    ClipRRect(borderRadius: BorderRadius.circular(20),
        child: Image.asset("assets/3.jpeg")),
    ClipRRect(borderRadius: BorderRadius.circular(20),
        child: Image.asset("assets/4.jpeg")),  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 180.0,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          initialPage: 0,
          viewportFraction: 0.8,
        ),
        items: _ImAgeList.map((container) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                child: container,
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
