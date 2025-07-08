import 'package:arcana_app/core/utils/utils.dart';
import 'package:arcana_app/ui/widgets/widgets.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sizer/sizer.dart';

class AddressItem extends StatelessWidget {
  const AddressItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Palette.gray.withOpacity(.6),
        ),
        borderRadius: BorderRadius.circular(10.sp),
      ),
      padding: EdgeInsets.all(5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Texts.medium(
            "Jane Doe",
            color: Palette.primary,
          ).only(bottom: 2.h),
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
          Row(
            children: [
              CustomButton(
                onPressed: () {},
                child: Texts.medium(
                  "Edit",
                  color: Palette.white,
                ),
              ),
              SizedBox(width: 5.w),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  IconlyLight.delete,
                  color: Palette.gray,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
