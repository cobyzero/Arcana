import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeBannersSkeleton extends StatelessWidget {
  const HomeBannersSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.h,
      width: double.infinity,
      color: Colors.grey.shade300,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
