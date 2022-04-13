import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial_app/constant/color_constant.dart';
import 'package:tutorial_app/screens/Home%20Screen/home_screen.dart';

import 'Widgets/app_icon.dart';
import 'Widgets/password_text_field.dart';
import 'Widgets/user_name_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFDBF3FA),
            Color(0xFFB7E9F7),
            Color(0xFF92DFF3),
            Color(0xFFB7E9F7),
            Color(0xFFDBF3FA),
            Color(0xFFDBF3FA),
            Color(0xFFDBF3FA),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Stack(
          children: [
            Positioned(
              right: -100,
              bottom: -2,
              child: SizedBox(
                width: 230,
                height: 230,
                child: Image.asset(
                  "assets/images/loginman.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // BlurryContainer(
            //   borderRadius: BorderRadius.circular(20),
            //   bgColor: Colors.transparent,
            //   height: 150,
            //   width: 250,
            // ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppIconWidget(),
                  const SizedBox(
                    height: 13,
                  ),
                  const Text(
                    "Tutorial App",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const UserNameTextField(),
                  const SizedBox(
                    height: 20,
                  ),
                  const PasswordTextField(),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: SizedBox(
                      width: double.infinity,
                      child: InkWell(
                        onTap: () {
                          Get.to(const HomeScreen());
                        },
                        child: BlurryContainer(
                          bgColor: ColorConstant.white,
                          width: double.infinity,
                          height: 40,
                          padding: const EdgeInsets.all(0),
                          borderRadius: BorderRadius.circular(10),
                          child: const Center(
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: const TextSpan(
                        text: "Don’t have an account ? ",
                        style: TextStyle(color: ColorConstant.primaryColor),
                        children: [
                          TextSpan(
                              text: " Sign Up",
                              style: TextStyle(
                                  color: ColorConstant.secondaryColor))
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
