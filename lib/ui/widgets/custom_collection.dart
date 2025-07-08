import 'package:arcana_app/core/generated/generated.dart';
import 'package:arcana_app/core/utils/utils.dart';
import 'package:arcana_app/ui/widgets/widgets.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomCollection extends StatelessWidget {
  const CustomCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: AspectRatio(
                aspectRatio: 1.1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    image: DecorationImage(
                      image: Assets.images.person.provider(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ).only(right: 2.w),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1.5,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        image: DecorationImage(
                          image: Assets.images.person.provider(),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ).only(bottom: 2.w),
                  Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 1.7,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            image: DecorationImage(
                              image: Assets.images.person.provider(),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Palette.gray.withOpacity(.5),
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                          child: Center(
                            child: Text(
                              '+2',
                              style: TextStyle(
                                color: Palette.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ).only(bottom: 2.h),
        Texts.medium(
          'Womens White Shirt',
          fontSize: 17,
        ).only(bottom: 1.h),
        Texts.regular(
          'Brand Name',
        ).only(bottom: 1.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Texts.regular(
              'S/. 359',
              color: Palette.gray,
              underline: true,
              fontSize: 14,
            ).only(right: 2.w),
            Texts.bold(
              'S/. 200',
              color: Palette.primary,
            ).only(top: 1.h, right: 2.w),
            Texts.regular(
              '(20% Off)',
              fontSize: 14,
              color: Palette.green,
            ).only(top: 1.h),
          ],
        ).only(bottom: 2.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomButton(
                height: 3.h,
                backgroundColor: Colors.transparent,
                borderSide: BorderSide(
                  color: Palette.primary,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Texts.medium(
                      "Wishlist",
                      color: Palette.primary,
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Palette.primary,
                    ),
                  ],
                ),
              ).only(right: 2.w),
            ),
            Expanded(
              child: CustomButton(
                height: 3.h,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Texts.medium(
                      "Add to Bag",
                      color: Palette.white,
                    ),
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Palette.white,
                    ),
                  ],
                ),
              ).only(left: 2.w),
            ),
          ],
        ),
      ],
    ).symmetric(horizontal: 5.w);
  }
}
