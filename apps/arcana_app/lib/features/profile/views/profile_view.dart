import 'package:app_ui/app_ui.dart';
import 'package:arcana_app/core/router/route_name.dart';
import 'package:arcana_app/features/profile/widgets/profile_item.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';
import 'package:sizer/sizer.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20.sp,
                  backgroundImage: Assets.images.banner3.provider(),
                ).only(right: 4.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Texts.bold('Jane Doe').only(bottom: 1.h),
                    Texts.regular(
                      'jane.doe@example.com',
                      color: Palette.gray,
                    ),
                  ],
                ),
              ],
            ).only(top: 4.h, bottom: 2.h),
            ProfileItem(
              title: 'My Account',
              icon: IconlyLight.profile,
              onTap: () {},
            ),
            ProfileItem(
              title: 'My Orders',
              icon: IconlyLight.bag,
              onTap: () {},
            ),
            ProfileItem(
              title: 'Delivery Addresses',
              icon: IconlyLight.location,
              onTap: () {
                context.go(RouteName.address);
              },
            ),
            ProfileItem(
              title: 'Help & Support',
              icon: IconlyLight.calling,
              onTap: () {},
            ),
            ProfileItem(
              title: 'Privacy Policy & Terms',
              icon: IconlyLight.document,
              onTap: () {},
            ),
            Spacer(),
            ListTile(
              onTap: () {},
              title: Texts.regular(
                'Logout',
                color: Palette.red,
              ),
              leading: Icon(
                IconlyLight.logout,
                color: Palette.red,
              ),
            ),
          ],
        ).symmetric(horizontal: 5.w),
      ),
    );
  }
}
