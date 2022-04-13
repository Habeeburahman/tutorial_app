import 'package:flutter/material.dart';
import 'package:tutorial_app/constant/color_constant.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.black54,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          border: OutlineInputBorder(
            // borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: const OutlineInputBorder(
              // borderSide: BorderSide(color: Colors.white)

              ),
        ),
      ),
    );
  }
}
