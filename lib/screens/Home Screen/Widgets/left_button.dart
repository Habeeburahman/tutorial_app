import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class LeftButton extends StatelessWidget {
  const LeftButton({
    Key? key,
    required this.carouselController,
  }) : super(key: key);

  final CarouselController carouselController;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.centerLeft,
        child: IconButton(
            onPressed: () => carouselController.previousPage(
                duration: const Duration(
                  milliseconds: 300,
                ),
                curve: Curves.linear),
            icon: const Icon(Icons.chevron_left)),
      ),
    );
  }
}
