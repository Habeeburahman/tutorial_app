import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class RightButton extends StatelessWidget {
  const RightButton({
    Key? key,
    required this.carouselController,
  }) : super(key: key);

  final CarouselController carouselController;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.centerRight,
        child: IconButton(
            onPressed: () => carouselController.nextPage(
                duration: const Duration(
                  milliseconds: 300,
                ),
                curve: Curves.linear),
            icon: const Icon(Icons.chevron_right)),
      ),
    );
  }
}
