import 'package:flutter/material.dart';
import 'package:instagram_login_clone/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Stack(
            children: [
              // Position the logo at the top center
              Positioned(
                top: 10,
                left: 0,
                right: 0,
                child: Image(
                  image: AssetImage("assets/instagramLogo.png"),
                  height: 130,
                  width: 130,
                ),
              ),
              // Position the TextField right below the logo
              Positioned(
                top:
                    130, // 150 is the height of the logo, add some space below it
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    CustomTextfield(
                      labelText: "Enter your name",
                      isPassword: false,
                      isFilled: true,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextfield(
                      labelText: "Password",
                      isPassword: false,
                      isFilled: true,
                    ),
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
