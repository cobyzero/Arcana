import 'dart:async';

import 'package:arcana_app/core/utils/utils.dart';
import 'package:arcana_app/domain/entities/banner_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeBanners extends StatefulWidget {
  const HomeBanners({super.key, required this.banners});

  final List<BannerEntity> banners;

  @override
  State<HomeBanners> createState() => _HomeBannersState();
}

class _HomeBannersState extends State<HomeBanners> {
  int currentIndex = 0;
  Timer? timer;
  final pageController = PageController();
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      currentIndex++;
      if (currentIndex >= widget.banners.length) {
        currentIndex = 0;
      }
      setState(() {});
      pageController.animateToPage(currentIndex,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: 34.h,
          width: double.infinity,
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            controller: pageController,
            itemCount: widget.banners.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: CachedNetworkImageProvider(
                      widget.banners[index].image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 2.3.h,
          child: Center(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.banners.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return AnimatedContainer(
                  margin: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
                  duration: const Duration(milliseconds: 500),
                  width: 5.w,
                  color: index == currentIndex
                      ? Palette.primary
                      : Palette.white.withOpacity(0.5),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
