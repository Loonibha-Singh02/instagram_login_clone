import 'package:flutter/material.dart';

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
        hintStyle: hintStyle,
        suffixIcon: suffixIcon,
        filled: isFilled,
        fillColor: filledColor ?? const Color.fromARGB(255, 225, 218, 218),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      validator: validator,
    );
  }
}
