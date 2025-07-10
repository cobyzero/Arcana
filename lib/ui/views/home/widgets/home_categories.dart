import 'package:arcana_app/core/router/route_name.dart';
import 'package:arcana_app/core/utils/utils.dart';
import 'package:arcana_app/domain/entities/category_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key, required this.categories});
  final List<CategoryEntity> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 11.h,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(width: 4.w);
        },
        padding: EdgeInsets.only(left: 5.w),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              context.go(RouteName.category, extra: categories[index]);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 8.h,
                  width: 8.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        categories[index].image ?? "",
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ).only(bottom: 1.h),
                Texts.bold(
                  categories[index].name,
                  fontSize: 13,
                  alignment: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
