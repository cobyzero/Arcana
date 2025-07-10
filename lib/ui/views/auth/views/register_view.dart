import 'package:arcana_app/app/blocs/auth_bloc/auth_bloc.dart';
import 'package:arcana_app/core/utils/alert.dart';
import 'package:arcana_app/core/utils/utils.dart';
import 'package:arcana_app/core/router/route_name.dart';
import 'package:arcana_app/ui/widgets/widgets.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _loading = false;
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthError) {
                setState(() {
                  _loading = false;
                });
                context.showSnackBar(state.message);
              }
              if (state is AuthLoading) {
                setState(() {
                  _loading = true;
                });
                context.showSnackBar('Loading...');
              }
              if (state is AuthLogged) {
                setState(() {
                  _loading = false;
                });
                context.showSnackBar(state.message);
                context.go(RouteName.root);
              }
            },
            builder: (context, state) {
              return Form(
                key: _formKey,
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
                    const Texts.bold(
                      "Welcome to Arcana",
                    ).only(bottom: 1.h),
                    const Texts.regular(
                      "Let's make your account",
                      color: Palette.gray,
                    ).only(bottom: 4.h),
                    CustomInput(
                      prefixIcon: Icons.person_2_outlined,
                      hintText: "Name",
                      controller: _nameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ).only(bottom: 2.h),
                    CustomInput(
                      prefixIcon: Icons.email_outlined,
                      hintText: "Your Email / Phone Number",
                      controller: _emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!value.contains('@')) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ).only(bottom: 2.h),
                    CustomInput(
                      prefixIcon: Icons.lock_outline,
                      hintText: "Password",
                      controller: _passwordController,
                      isPassword: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ).only(bottom: 2.h),
                    CustomInput(
                      prefixIcon: Icons.lock_outline,
                      hintText: "Confirm Password",
                      controller: _confirmPasswordController,
                      isPassword: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your confirm password';
                        }
                        if (value != _passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ).only(bottom: 2.h),
                    CustomButton(
                      height: 6.h,
                      enable: !_loading,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthBloc>().add(
                                AuthRegisterEvent(
                                  name: _nameController.text,
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                ),
                              );
                        }
                      },
                      child: const Texts.medium(
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
                        const Texts.bold("OR").symmetric(horizontal: 2.w),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 1,
                            color: Palette.border,
                          ),
                        ),
                      ],
                    ).only(bottom: 4.h),
                    const Texts.regular(
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
                        const Text("Already have an account?"),
                        TextButton(
                          onPressed: () {
                            context.go(RouteName.login);
                          },
                          child: const Texts.bold(
                            "Login",
                            color: Palette.primary,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          ).symmetric(horizontal: 5.w),
        ),
      ),
    );
  }
}
