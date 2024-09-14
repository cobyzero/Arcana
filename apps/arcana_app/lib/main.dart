import 'package:app_ui/app_ui.dart';
import 'package:arcana_app/core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return MaterialApp.router(
          title: 'Material App',
          routerConfig: router,
          theme: ThemeData(
            fontFamily: FontFamily.sFProDisplay,
          ),
        );
      },
    );
  }
}
