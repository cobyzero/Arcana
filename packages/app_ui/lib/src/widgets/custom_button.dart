import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Palette.primary,
        fixedSize: Size(100.w, 6.h),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(15.sp),
        ),
      ),
      child: Texts.regular(
        text,
        fontSize: 17,
        color: Palette.white,
      ),
    );
  }
}
