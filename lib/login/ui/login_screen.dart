import 'dart:math';

import 'package:flutter/material.dart';
import 'package:instagram_login_clone/login/widgets/custom_button.dart';
import 'package:instagram_login_clone/login/widgets/custom_textfield.dart';
import 'package:instagram_login_clone/login/widgets/divider_with_or.dart';
import 'package:remixicon/remixicon.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              // Position the logo at the top center
              const Positioned(
                top: 20,
                left: 0,
                right: 0,
                child: Image(
                  image: AssetImage("assets/instagramLogo.png"),
                  height: 110,
                  width: 110,
                ),
              ),
              // Position the TextField right below the logo
              Positioned(
                top: 130,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    const CustomTextfield(
                      hintText: "Phone number, email or username",
                      isPassword: false,
                      isFilled: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextfield(
                      hintText: "Password",
                      isPassword: false,
                      isFilled: true,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                        text: 'Log in', onpressed: () {}, isElevated: true),
                    const SizedBox(
                      height: 30,
                    ),
                    const DividerWithOr(),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                        icon: const Icon(
                          Remix.facebook_box_fill,
                          color: Color.fromARGB(255, 16, 68, 136),
                          size: 35,
                        ),
                        text: "Login with Facebook",
                        onpressed: () {
                          print("kjfkasjkfj");
                        },
                        isElevated: false),
                        const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                        text: "Forget Password?",
                        textSize: 15,
                        weight: FontWeight.w500,
                        onpressed: () {},
                        isElevated: false,
                        textColor: Colors.black87,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
