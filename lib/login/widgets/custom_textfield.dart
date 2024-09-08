import 'package:flutter/material.dart';
import 'package:instagram_login_clone/constant/colors.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final bool isPassword;
  final Icon? suffixIcon;
  final String? Function(String?)? validator;
  final bool isFilled;
  final Color? filledColor;

  const CustomTextfield({
    super.key,
    this.controller,
    required this.isPassword,
    this.suffixIcon,
    this.validator,
    required this.isFilled,
    this.filledColor, required this.hintText, this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey),
        suffixIcon: suffixIcon,
        filled: isFilled,
        fillColor: appGrey,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color:borderGrey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: borderGrey),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      validator: validator,
    );
  }
}
