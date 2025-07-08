import 'package:arcana_app/core/utils/utils.dart';
import 'package:flutter/material.dart';

class SelectPaymentPage extends StatelessWidget {
  const SelectPaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Texts.bold(
          'Select Payment Method',
          color: Palette.primary,
        ),
      ],
    );
  }
}
