import 'package:arcana_app/core/utils/utils.dart';
import 'package:arcana_app/ui/views/profile/widgets/address_item.dart';
import 'package:arcana_app/ui/widgets/widgets.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomButton(
        height: 6.h,
        onPressed: () {},
        child: Texts.medium(
          'Add New Address',
          color: Palette.white,
        ),
      ).only(bottom: 4.h).symmetric(horizontal: 5.w),
      appBar: AppBar(
        title: Texts.medium('Delivery Addresses'),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) => AddressItem(),
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
          separatorBuilder: (context, index) => SizedBox(height: 4.h),
          itemCount: 10,
        ),
      ),
    );
  }
}
