import 'package:arcana_app/core/generated/generated.dart';
import 'package:arcana_app/core/utils/utils.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchBanner extends StatelessWidget {
  const SearchBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          width: double.infinity,
          height: 10.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.images.banner3.provider(),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Texts.medium(
          "Clothing",
          fontSize: 16,
        ).only(left: 5.w),
      ],
    );
  }
}
