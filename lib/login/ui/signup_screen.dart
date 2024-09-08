import 'package:flutter/material.dart';
import 'package:instagram_login_clone/constant/colors.dart';
import 'package:instagram_login_clone/login/widgets/custom_button.dart';
import 'package:instagram_login_clone/login/widgets/custom_textfield.dart';
import 'package:instagram_login_clone/login/widgets/divider_with_or.dart';
import 'package:remixicon/remixicon.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        height: 65,
          color: Colors.white,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              " Have an account?",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Log in',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: buttonColor),
                ))
          ])),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              // Position the logo at the top center
              const Positioned(
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
                top: 90,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    const CustomTextfield(
                      hintText: "Phone number, email ",
                      isPassword: false,
                      isFilled: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextfield(
                      hintText: "Full Name",
                      isPassword: false,
                      isFilled: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextfield(
                      hintText: "Username",
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
                      height: 10,
                    ),

                     SizedBox(
                      width: 340,
                      height: 80,
                       child: Text(
                          "People who use our service may have uploaded your contact information to Instagram. Learn More",
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey)),
                     ),
                      SizedBox(
                      width: 340,
                      height: 50,
                       child: Text(
                          "By signing up, you agree to our Terms , Privacy Policy and Cookies Policy .",
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey)),
                     ),

                   

                    //login button
                    CustomButton(
                        text: 'Sign up', onpressed: () {}, isElevated: true),
                    const SizedBox(
                      height: 30,
                    ),

                    //divider
                    const DividerWithOr(),
                    const SizedBox(
                      height: 30,
                    ),

                    //facebook
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
