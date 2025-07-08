import 'package:arcana_app/core/generated/generated.dart';
import 'package:arcana_app/core/utils/utils.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sizer/sizer.dart';

class WishItem extends StatelessWidget {
  const WishItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 17.w,
          height: 17.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp),
            image: DecorationImage(
              image: Assets.images.person.provider(),
              fit: BoxFit.cover,
            ),
          ),
        ).only(right: 3.w),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Texts.medium(
                    'Printed Shirt',
                    color: Palette.primary,
                  ),
                  Texts.bold(
                    '\$100.00 USD',
                  ),
                ],
              ).only(bottom: 1.h, top: 2.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Texts.regular(
                    'Gucci',
                    color: Palette.gray,
                    fontSize: 13,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      IconlyBold.heart,
                      color: Palette.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
