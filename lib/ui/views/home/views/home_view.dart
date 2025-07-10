import 'package:arcana_app/app/blocs/banner_bloc/banner_bloc.dart';
import 'package:arcana_app/app/blocs/category_bloc/category_bloc.dart';
import 'package:arcana_app/core/generated/generated.dart';
import 'package:arcana_app/core/utils/utils.dart';
import 'package:arcana_app/core/router/route_name.dart';
import 'package:arcana_app/ui/views/home/widgets/home_banners.dart';
import 'package:arcana_app/ui/views/home/widgets/home_categories.dart';
import 'package:arcana_app/ui/widgets/Skeleton/home_banners_skeleton.dart';
import 'package:arcana_app/ui/widgets/Skeleton/home_categories_skeleton.dart';
import 'package:arcana_app/ui/widgets/widgets.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.sp),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 17.sp,
                    backgroundImage: Assets.images.person.provider(),
                  ).only(right: 4.w),
                  const Texts.medium(
                    "Anna Doe",
                  ),
                  const Spacer(),
                  Icon(
                    Icons.search,
                    size: 21.sp,
                  ),
                ],
              ).symmetric(horizontal: 5.w, vertical: 2.h),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<CategoryBloc, CategoryState>(
                      builder: (context, state) {
                        if (state is CategoryLoaded) {
                          return HomeCategories(
                            categories: state.categories,
                          );
                        }
                        return const HomeCategoriesSkeleton();
                      },
                    ).symmetric(vertical: 2.h),
                    BlocBuilder<BannerBloc, BannerState>(
                      builder: (context, state) {
                        if (state is BannerLoaded) {
                          return HomeBanners(
                            banners: state.banners,
                          );
                        }
                        return const HomeBannersSkeleton();
                      },
                    ).only(bottom: 3.h),
                    const Texts.medium(
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
                          return GestureDetector(
                            onTap: () {
                              context.go(RouteName.product);
                            },
                            child: CustomOffer(
                              image: Assets.images.trending.path,
                              brand: "Nike",
                              text: "Min 30% Off",
                            ).only(right: 3.w),
                          );
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
          ],
        ),
      ),
    );
  }
}
