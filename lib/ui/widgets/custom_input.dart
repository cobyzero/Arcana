import 'package:arcana_app/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.controller,
    this.validator,
    this.isPassword = false,
  });
  final String hintText;
  final IconData prefixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      cursorColor: Palette.primary,
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          color: Palette.gray,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 15.sp,
          color: Palette.gray,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Palette.border,
            width: 1,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Palette.border,
            width: 1,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Palette.primary,
            width: 1,
          ),
        ),
      ),
      controller: controller,
      obscureText: isPassword,
    );
  }
}
