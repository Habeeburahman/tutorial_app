import 'package:flutter/material.dart';
import 'package:tutorial_app/constant/color_constant.dart';

class UserNameTextField extends StatelessWidget {
  const UserNameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.person,
            color: Colors.black54,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          border: OutlineInputBorder(
            // borderSide: const BorderSide(color: Colors.white),
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
