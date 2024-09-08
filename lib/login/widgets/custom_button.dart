import 'package:flutter/material.dart';
import 'package:instagram_login_clone/constant/colors.dart';

class CustomElevButton extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;

  const CustomElevButton({super.key, required this.text, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: buttonColor,
            minimumSize: const Size(350, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: const BorderSide(
                color: Colors.white
              )
            ),
        ),
        child: Text(text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15
        ),
        ),
    );
  }
}