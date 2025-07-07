import 'package:app_ui/app_ui.dart';
import 'package:arcana_app/core/router/route_name.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                "Welcome back to Arcana",
              ).only(bottom: 1.h),
              Texts.regular(
                "Sign in to continue",
                color: Palette.gray,
              ).only(bottom: 4.h),
              CustomInput(
                prefixIcon: Icons.person_2_outlined,
                hintText: "Your Email / Phone Number",
              ).only(bottom: 2.h),
              CustomInput(
                prefixIcon: Icons.lock_outline,
                hintText: "Password",
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Texts.bold(
                    "Forgot Password?",
                    color: Palette.primary,
                  ),
                ),
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                value: false,
                contentPadding: EdgeInsets.zero,
                onChanged: (value) {},
                activeColor: Palette.primary,
                title: Texts.regular(
                  "Remember me",
                  color: Palette.gray,
                ),
              ).only(bottom: 2.h),
              CustomButton(
                height: 6.h,
                onPressed: () {
                  context.go(RouteName.root);
                },
                child: Texts.medium(
                  "Login",
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
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      context.go(RouteName.register);
                    },
                    child: Texts.bold(
                      "Register",
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
