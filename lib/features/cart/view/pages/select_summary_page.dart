import 'package:app_ui/app_ui.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sizer/sizer.dart';

class SelectSummaryPage extends StatelessWidget {
  const SelectSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              IconlyLight.home,
            ).only(right: 2.w),
            Texts.regular(
              "Estimated Delivery by Thursday, 07 Oct",
              fontSize: 14,
            ),
          ],
        ).only(bottom: 2.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Palette.primary.withOpacity(.1),
            borderRadius: BorderRadius.circular(10.sp),
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Palette.primary,
                  borderRadius: BorderRadius.circular(10.sp),
                  image: DecorationImage(
                    image: AssetImage(Assets.images.person.path),
                  ),
                ),
                width: 18.w,
                height: 18.w,
              ).only(right: 4.w),
              Expanded(
                child: SizedBox(
                  height: 8.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Texts.bold(
                        "Wine Halter Bow Skater Dress",
                        fontSize: 14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texts.regular("Size: M"),
                          Texts.regular("Qty: 1"),
                        ],
                      ),
                      Texts.bold("\$100,34"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ).only(bottom: 2.h),
        Texts.bold(
          "Delivery Address",
          fontSize: 16,
        ).only(bottom: 2.h),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
          decoration: BoxDecoration(
            color: Palette.primary.withOpacity(.1),
            borderRadius: BorderRadius.circular(10.sp),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Texts.bold("John Doe").only(bottom: 1.h),
              Texts.regular("123 Main St, Anytown, USA"),
              Texts.regular("+1234567890"),
            ],
          ),
        ).only(bottom: 2.h),
        Texts.bold(
          "Payment Method",
          fontSize: 16,
        ).only(bottom: 2.h),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
          decoration: BoxDecoration(
            color: Palette.primary.withOpacity(.1),
            borderRadius: BorderRadius.circular(10.sp),
          ),
          child: Row(
            children: [
              Icon(Icons.credit_card).only(right: 2.w),
              Texts.bold("Credit Card"),
            ],
          ),
        ).only(bottom: 2.h),
      ],
    );
  }
}
