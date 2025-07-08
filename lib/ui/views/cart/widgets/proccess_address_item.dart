import 'package:arcana_app/core/utils/utils.dart';
import 'package:arcana_app/ui/widgets/widgets.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProccessAddressItem extends StatelessWidget {
  const ProccessAddressItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Palette.primary.withOpacity(.1),
      ),
      padding: EdgeInsets.all(5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Texts.medium(
            "Jane Doe",
            color: Palette.primary,
          ).only(bottom: 1.h),
          Texts.regular(
            "52 Ridgewood Drive, SW. Saxton St. North Fort Myers, Henrico, VA 23228",
            color: Palette.gray,
            fontSize: 14,
          ).only(bottom: 2.h),
          Texts.regular(
            "Phone: 804-234-5678",
            color: Palette.gray,
            fontSize: 14,
          ).only(bottom: 2.h),
          GestureDetector(
            onTap: () {},
            child: Texts.medium(
              'Edit',
              color: Palette.primary,
              fontSize: 14,
            ),
          ).only(bottom: 4.h),
          Align(
            alignment: Alignment.center,
            child: CustomButton(
              onPressed: () {},
              child: Texts.medium(
                'Deliver to this address',
                color: Palette.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
