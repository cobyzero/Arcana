import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeCategoriesSkeleton extends StatelessWidget {
  const HomeCategoriesSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8.h,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 5.w),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: 8.h,
            width: 8.h,
            margin: EdgeInsets.only(right: 3.w),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
