import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_app/constant/asset_constant.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({
    Key? key,
    required this.carouselController,
  }) : super(key: key);

  final CarouselController carouselController;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: carouselController,
      options: CarouselOptions(
        enableInfiniteScroll: false,
        enlargeCenterPage: false,
        viewportFraction: 1,
      ),
      items: [
        AssetConstant.course4,
        AssetConstant.course2,
        AssetConstant.course3,
        AssetConstant.course1,
        AssetConstant.course5,
      ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Image.asset(i.toString()),
            );
          },
        );
      }).toList(),
    );
  }
}
