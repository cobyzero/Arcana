import 'package:app_ui/app_ui.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:iconly/iconly.dart';
import 'package:sizer/sizer.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              IconlyLight.heart,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              IconlyLight.bag,
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
          decoration: BoxDecoration(
            color: Palette.white,
            boxShadow: [
              BoxShadow(
                color: Palette.gray.withOpacity(.5),
                blurRadius: 10,
                offset: Offset(0, -4),
              ),
            ],
          ),
          child: Row(
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
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.h,
              child: PageView.builder(
                itemCount: Assets.images.values.length,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemBuilder: (context, index) {
                  return Image.asset(
                    Assets.images.values[index].path,
                    width: double.infinity,
                    height: 60.h,
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            SizedBox(
              height: 2.8.h,
              child: Center(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Assets.images.values.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final isActive = index == currentIndex;

                    return AnimatedContainer(
                      margin: EdgeInsets.symmetric(
                        horizontal: 1.w,
                        vertical: 1.h,
                      ),
                      duration: Duration(milliseconds: 500),
                      width: isActive ? 3.w : 1.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isActive ? Palette.primary : Palette.gray,
                      ),
                    );
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Texts.medium(
                  "Women's Cotton Blend Shirt",
                ),
                Icon(
                  IconlyLight.send,
                ),
              ],
            ).symmetric(horizontal: 5.w),
            Texts.regular(
              "Brand Name",
              fontSize: 15,
            ).only(left: 5.w, bottom: 1.h),
            Row(
              children: [
                Texts.medium(
                  "\$100",
                  fontSize: 14,
                  underline: true,
                  color: Palette.gray,
                ).only(right: 3.w),
                Texts.regular(
                  "\$100",
                  fontSize: 17,
                ).only(right: 1.w),
                Texts.regular(
                  "(20% Off)",
                  fontSize: 14,
                  color: Palette.green,
                ),
              ],
            ).symmetric(horizontal: 5.w).only(bottom: 2.h),
            Texts.medium(
              "Color",
              fontSize: 15,
            ).only(left: 5.w, bottom: .5.h),
            SizedBox(
              height: 5.h,
              child: ListView.builder(
                itemCount: 5,
                padding: EdgeInsets.only(left: 5.w),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CircleAvatar(
                    radius: 15.sp,
                    backgroundColor: Palette.green,
                  ).only(right: 6.w);
                },
              ),
            ).only(bottom: 1.h),
            Texts.medium(
              "Select Size",
              fontSize: 15,
            ).only(left: 5.w, bottom: 1.h),
            SizedBox(
              height: 5.h,
              child: ListView.builder(
                itemCount: 5,
                padding: EdgeInsets.only(left: 8.w),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Texts.regular("xs"),
                  ).only(right: 6.w);
                },
              ),
            ).only(bottom: 1.h),
            ExpansionTile(
              shape: RoundedRectangleBorder(),
              childrenPadding: EdgeInsets.symmetric(horizontal: 4.w),
              title: Texts.medium(
                "Product Details",
                fontSize: 15,
              ),
              children: [
                Texts.regular(
                  "Reflective design details Fabric: Body: 100% recycled polyester.Lining: 79% polyester/ 21% elastane. Hand wash Imported Not intended for use as Personal Protective Equipment Colour Shown: Volt Style: BV2204-702 Country/Region of Origin: Indonesia,",
                  fontSize: 14,
                ),
              ],
            ),
            ExpansionTile(
              shape: RoundedRectangleBorder(),
              childrenPadding: EdgeInsets.symmetric(horizontal: 4.w),
              title: Texts.medium(
                "Ratings & Reviews",
                fontSize: 15,
              ),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Texts.medium(
                      "4.4",
                      fontSize: 20,
                    ).only(right: 2.w),
                    StarRating(
                      rating: 4.4,
                      size: 20.sp,
                      color: Palette.black,
                    ),
                  ],
                ).only(bottom: 1.h),
                Texts.regular(
                  "35 Verified Buyers",
                  color: Palette.gray,
                  fontSize: 14,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
              width: double.infinity,
              height: 1,
              color: Palette.primary.withOpacity(.5),
            ),
            Texts.medium(
              "Similar Products",
              fontSize: 15,
            ).only(left: 4.w, bottom: 2.h),
            ListView.separated(
              itemCount: 5,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 3.h,
                );
              },
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CustomCollection();
              },
            ),
          ],
        ),
      ),
    );
  }
}
