import 'package:flutter/material.dart';

extension Alert on BuildContext {
  void showSnackBar(String message) {
    if (mounted) {
      ScaffoldMessenger.of(this).removeCurrentSnackBar();
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }
  }
}
