import 'package:app_ui/app_ui.dart';
import 'package:arcana_app/features/home/widgets/home_banners.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 17.sp,
                  ).only(right: 4.w),
                  Texts.medium(
                    "Anna Doe",
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    size: 21.sp,
                  ),
                ],
              ).symmetric(horizontal: 5.w).only(bottom: 3.h),
              SizedBox(
                height: 8.h,
                child: ListView.builder(
                  padding: EdgeInsets.only(left: 5.w),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 20.sp,
                        ).only(bottom: 1.h),
                        Texts.regular(
                          "Men",
                          fontSize: 13,
                        ),
                      ],
                    ).only(right: 3.w);
                  },
                ),
              ).only(bottom: 3.h),
              HomeBanners(
                banners: Assets.images.values
                    .map(
                      (e) => e.path,
                    )
                    .toList(),
              ).only(bottom: 3.h),
              Texts.medium(
                "Trending Offers",
              ).only(bottom: 2.h, left: 5.w),
              SizedBox(
                height: 25.h,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 5.w),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return CustomOffer(
                      image: Assets.images.trending.path,
                      brand: "Nike",
                      text: "Min 30% Off",
                    ).only(right: 3.w);
                  },
                ),
              ).only(bottom: 3.h),
              Texts.medium(
                "Deals Of The Day",
              ).only(bottom: 2.h, left: 5.w),
              SizedBox(
                height: 50.h,
                width: double.infinity,
                child: GridView.builder(
                  padding: EdgeInsets.only(left: 5.w),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1.h,
                    mainAxisSpacing: 10.w,
                    childAspectRatio: 4 / 3,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return CustomOffer(
                      image: Assets.images.trending.path,
                      brand: "Nike",
                      text: "S/. 24.40",
                    );
                  },
                ),
              ).only(bottom: 3.h),
              Texts.medium(
                "Our Collection",
              ).only(bottom: 2.h, left: 5.w),
              CustomCollection(),
            ],
          ),
        ),
      ),
    );
  }
}
