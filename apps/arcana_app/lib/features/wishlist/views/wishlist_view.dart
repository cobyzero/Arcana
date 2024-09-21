import 'package:app_ui/app_ui.dart';
import 'package:arcana_app/features/wishlist/widgets/wish_item.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomButton(
        onPressed: () {},
        child: Texts.bold(
          'Add all to cart',
          fontSize: 18,
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
            ).only(top: 2.h),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                separatorBuilder: (context, index) {
                  return SizedBox(height: 2.h);
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
