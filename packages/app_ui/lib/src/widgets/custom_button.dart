import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.backgroundColor,
    this.borderSide,
    this.height,
  });
  final Function() onPressed;
  final Widget child;
  final Color? backgroundColor;
  final BorderSide? borderSide;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shadowColor: backgroundColor ?? Palette.primary,
        backgroundColor: backgroundColor ?? Palette.primary,
        fixedSize: Size(100.w, height ?? 6.h),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(15.sp),
          side: borderSide ?? BorderSide.none,
        ),
      ),
      child: child,
    );
  }
}
