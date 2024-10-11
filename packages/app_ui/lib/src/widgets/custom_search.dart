import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sizer/sizer.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key, this.focusNode});

  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      decoration: InputDecoration(
        filled: true,
        fillColor: Palette.gray.withOpacity(.2),
        isDense: true,
        hintText: 'Search...',
        hintStyle: TextStyle(
          color: Palette.gray,
          fontSize: 14.sp,
        ),
        prefixIcon: Icon(
          IconlyLight.search,
          color: Palette.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.sp),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.sp),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
