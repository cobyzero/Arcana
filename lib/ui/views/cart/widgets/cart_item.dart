import 'package:arcana_app/core/generated/generated.dart';
import 'package:arcana_app/core/utils/utils.dart';
import 'package:arcana_app/ui/views/cart/widgets/cart_plus_remove.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sizer/sizer.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.w, horizontal: 3.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        border: Border.all(
          color: Palette.gray.withOpacity(.2),
          width: 1,
        ),
      ),
      child: Row(
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
                    Expanded(
                      child: Texts.medium(
                        'Wine Halter Bow Skater Dress',
                        color: Palette.primary,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              IconlyBold.heart,
                              color: Palette.red,
                            ),
                          ).only(right: 3.w),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              IconlyLight.delete,
                              color: Palette.gray,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ).only(bottom: 2.h, top: 2.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Texts.regular(
                      'Gucci',
                      color: Palette.gray,
                      fontSize: 13,
                    ),
                    const CartPlusRemove(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
