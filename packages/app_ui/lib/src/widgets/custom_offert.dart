import 'package:app_ui/app_ui.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomOffer extends StatelessWidget {
  const CustomOffer({
    super.key,
    required this.image,
    required this.text,
    required this.brand,
  });
  final String image;
  final String text;
  final String brand;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40.w,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 20.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10.sp),
              ),
            ),
          ).only(bottom: .5.h),
          Texts.regular(
            brand,
            color: Palette.gray,
          ).only(bottom: .5.h),
          Texts.medium(
            text,
          ),
        ],
      ),
    );
  }
}
