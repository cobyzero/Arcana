import 'package:app_ui/app_ui.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CartPlusRemove extends StatelessWidget {
  const CartPlusRemove({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(.5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        color: Palette.gray.withOpacity(.2),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(1.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(8.sp),
              ),
              color: Palette.white,
            ),
            child: Icon(
              Icons.remove,
              color: Palette.gray,
              size: 15.sp,
            ),
          ),
          Texts.regular(
            '1',
            color: Palette.gray,
            fontSize: 13,
          ).symmetric(horizontal: 4.w),
          Container(
            padding: EdgeInsets.all(1.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(8.sp),
              ),
              color: Palette.white,
            ),
            child: Icon(
              Icons.add,
              color: Palette.gray,
              size: 15.sp,
            ),
          ),
        ],
      ),
    );
  }
}
