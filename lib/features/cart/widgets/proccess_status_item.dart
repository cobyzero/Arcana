import 'package:app_ui/app_ui.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProccessStatusItem extends StatelessWidget {
  const ProccessStatusItem({
    super.key,
    required this.status,
    required this.isActive,
    required this.title,
  });
  final String status;
  final bool isActive;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          padding: isActive ? EdgeInsets.all(1.3.w) : EdgeInsets.all(2.w),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Palette.primary,
            ),
            color: isActive ? Palette.primary : Palette.white,
          ),
          child: isActive
              ? Icon(
                  Icons.check,
                  size: 16.sp,
                  color: Palette.white,
                )
              : Texts.medium(
                  status,
                  color: Palette.primary,
                ),
        ).only(bottom: .5.h),
        Texts.regular(
          title,
          color: Palette.primary,
          fontSize: 13,
        ),
      ],
    );
  }
}
