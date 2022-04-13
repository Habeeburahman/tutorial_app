import 'package:flutter/material.dart';
import 'package:tutorial_app/constant/color_constant.dart';

AppBar appBar() {
  return AppBar(
    centerTitle: true,
    title: const Text(
      "Tutorial App",
      style: TextStyle(
          color: ColorConstant.primaryColor, fontWeight: FontWeight.bold),
    ),
    // leading: Image.asset(
    //   "assets/images/reading.png",
    //   height: 10,
    //   width: 10,
    //   fit: BoxFit.fill,
    // ),
    actions: const [
      Icon(
        Icons.more_vert,
        color: ColorConstant.primaryColor,
        size: 30,
      )
    ],
    elevation: 0,
    backgroundColor: Colors.transparent,
  );
}
