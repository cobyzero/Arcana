import 'package:arcana_app/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
    required this.hintText,
    required this.prefixIcon,
  });
  final String hintText;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Palette.border,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Palette.border,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Palette.primary,
            width: 1,
          ),
        ),
      ),
    );
  }
}
