import 'package:app_ui/app_ui.dart';
import 'package:arcana_app/features/cart/widgets/proccess_address_item.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SelectAddressPage extends StatelessWidget {
  const SelectAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          child: Texts.medium(
            '+ Add new address',
            color: Palette.primary,
            fontSize: 14,
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => ProccessAddressItem(),
            separatorBuilder: (context, index) => SizedBox(height: 4.h),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
