import 'package:arcana_app/core/utils/utils.dart';
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
    this.width,
    this.enable = true,
  });
  final Function() onPressed;
  final Widget child;
  final Color? backgroundColor;
  final BorderSide? borderSide;
  final double? height;
  final double? width;
  final bool enable;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enable ? onPressed : null,
      style: ElevatedButton.styleFrom(
        shadowColor: backgroundColor ?? Palette.primary,
        backgroundColor: backgroundColor ?? Palette.primary,
        fixedSize: width == null && height == null
            ? null
            : Size(width ?? 100.w, height ?? 6.h),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(15.sp),
          side: borderSide ?? BorderSide.none,
        ),
      ),
      child: child,
    );
  }
}
