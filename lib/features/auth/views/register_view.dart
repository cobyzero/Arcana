import 'package:app_ui/app_ui.dart';
import 'package:arcana_app/core/router/route_name.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 20.w,
                height: 20.w,
                decoration: BoxDecoration(
                  color: Palette.primary,
                  borderRadius: BorderRadius.circular(15.sp),
                ),
              ).only(top: 2.h, bottom: 2.h),
              Texts.bold(
                "Welcome to Arcana",
              ).only(bottom: 1.h),
              Texts.regular(
                "Let's make your account",
                color: Palette.gray,
              ).only(bottom: 4.h),
              CustomInput(
                prefixIcon: Icons.person_2_outlined,
                hintText: "Name",
              ).only(bottom: 2.h),
              CustomInput(
                prefixIcon: Icons.email_outlined,
                hintText: "Your Email / Phone Number",
              ).only(bottom: 2.h),
              CustomInput(
                prefixIcon: Icons.lock_outline,
                hintText: "Password",
              ).only(bottom: 2.h),
              CustomInput(
                prefixIcon: Icons.lock_outline,
                hintText: "Confirm Password",
              ).only(bottom: 2.h),
              CustomButton(
                height: 6.h,
                onPressed: () {},
                child: Texts.medium(
                  "Register",
                  color: Palette.white,
                ),
              ).only(bottom: 4.h),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Palette.border,
                    ),
                  ),
                  Texts.bold("OR").symmetric(horizontal: 2.w),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Palette.border,
                    ),
                  ),
                ],
              ).only(bottom: 4.h),
              Texts.regular(
                "Login using",
              ).only(bottom: 2.h),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.facebook,
                  size: 30.sp,
                  color: Palette.primary,
                ),
              ).only(bottom: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      context.go(RouteName.login);
                    },
                    child: Texts.bold(
                      "Login",
                      color: Palette.primary,
                    ),
                  ),
                ],
              )
            ],
          ).symmetric(horizontal: 5.w),
        ),
      ),
    );
  }
}
