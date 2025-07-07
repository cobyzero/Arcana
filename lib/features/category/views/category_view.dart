import 'package:app_ui/app_ui.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';
import 'package:sizer/sizer.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Texts.medium(
          "Tops",
          fontSize: 18,
        ),
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(
            IconlyLight.arrow_left_2,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              IconlyLight.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              IconlyLight.heart,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              DropdownButton(
                items: [
                  DropdownMenuItem(
                    child: Texts.regular(
                      "Low to High",
                    ),
                  ),
                ],
                onChanged: (value) {},
              ),
            ],
          ).symmetric(horizontal: 5.w),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 4.h,
                );
              },
              itemBuilder: (context, index) {
                return CustomCollection();
              },
            ),
          ),
        ],
      ),
    );
  }
}
