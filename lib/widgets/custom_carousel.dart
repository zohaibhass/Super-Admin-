// custom_carousel.dart
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomCarousel extends StatelessWidget {
  final List<String> imgList;

  const CustomCarousel({super.key, required this.imgList});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0, // Adjust height as needed
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(seconds: 2),
        viewportFraction: 1.0,
      ),
      items: imgList.map((item) {
        return Container(
          child: Center(
            child: Image.asset(
              item,
              fit: BoxFit.cover,
              width: 1000,
            ),
          ),
        );
      }).toList(),
    );
  }
}
