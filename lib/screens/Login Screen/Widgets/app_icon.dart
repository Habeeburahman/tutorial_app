import 'package:flutter/material.dart';
import 'package:tutorial_app/constant/asset_constant.dart';

class AppIconWidget extends StatelessWidget {
  const AppIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: Image.asset(
        "assets/images/reading.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
