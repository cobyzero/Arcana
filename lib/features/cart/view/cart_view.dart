import 'package:app_ui/app_ui.dart';
import 'package:arcana_app/core/router/route_name.dart';
import 'package:arcana_app/features/cart/widgets/cart_item.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Palette.gray.withOpacity(.3),
              width: 1,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Texts.bold(
                  'Total Price',
                  fontSize: 17,
                ),
                Texts.bold(
                  '\$766.86',
                  fontSize: 17,
                  color: Palette.green,
                ),
              ],
            ).only(bottom: 3.h),
            CustomButton(
              height: 6.h,
              onPressed: () {
                context.go(RouteName.proccess);
              },
              child: Texts.medium(
                'Checkout',
                color: Palette.white,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Texts.bold(
              'Your Cart',
              fontSize: 18,
              color: Palette.primary,
            ).only(top: 2.h, bottom: 2.h),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                separatorBuilder: (context, index) {
                  return SizedBox(height: 2.h);
                },
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const CartItem();
                },
              ),
            )
          ],
        ).symmetric(horizontal: 5.w),
      ),
    );
  }
}
