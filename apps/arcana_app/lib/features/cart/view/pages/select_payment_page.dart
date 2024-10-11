import 'package:app_ui/app_ui.dart';
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
