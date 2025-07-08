import 'package:arcana_app/core/utils/utils.dart';
import 'package:arcana_app/ui/views/wishlist/widgets/wish_item.dart';
import 'package:arcana_app/ui/widgets/widgets.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomButton(
        height: 6.h,
        onPressed: () {},
        child: Texts.medium(
          'Add all to cart',
          color: Palette.white,
        ),
      ).symmetric(horizontal: 5.w).only(bottom: 2.h, top: .5.h),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Texts.bold(
              'Wishlist',
              fontSize: 18,
              color: Palette.primary,
            ).only(top: 2.h, bottom: 2.h),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                separatorBuilder: (context, index) {
                  return SizedBox(height: 4.h);
                },
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const WishItem();
                },
              ),
            )
          ],
        ).symmetric(horizontal: 5.w),
      ),
    );
  }
}
