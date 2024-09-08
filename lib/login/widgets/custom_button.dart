import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import the flutter_svg package
import 'package:instagram_login_clone/constant/colors.dart';
import 'package:remixicon/remixicon.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  final bool isElevated;
  final Icon? icon;
  final Color? textColor;
  final double? textSize;
  final FontWeight? weight;

  const CustomButton({
    super.key,
    required this.text,
    required this.onpressed,
    required this.isElevated, this.icon, this.textColor, this.textSize, this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return isElevated
        ? ElevatedButton(
            onPressed: onpressed,
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: buttonColor,
              minimumSize: const Size(350, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(color: Colors.white)),
            ),
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          )
        : TextButton.icon(
            onPressed: onpressed,
            icon: icon,
            label: Text(
              text,
              style: TextStyle(
                fontSize: textSize,
                fontWeight: weight ?? FontWeight.w700,
                color: textColor ?? Color.fromARGB(255, 16, 68, 136),
              ),
            ),
          );
  }
}
