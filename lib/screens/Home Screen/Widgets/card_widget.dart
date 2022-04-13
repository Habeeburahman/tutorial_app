import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurryContainer(
      bgColor: Colors.white30,
      borderRadius: BorderRadius.circular(17),
      height: 100,
      width: 30,
      child: Center(
        child: Text(
          "Welcome user \n12 Courses completed",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
