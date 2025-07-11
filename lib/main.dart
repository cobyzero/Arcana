import 'package:arcana_app/app/blocs/auth_bloc/auth_bloc.dart';
import 'package:arcana_app/app/blocs/banner_bloc/banner_bloc.dart';
import 'package:arcana_app/app/blocs/category_bloc/category_bloc.dart';
import 'package:arcana_app/core/generated/fonts.gen.dart';
import 'package:arcana_app/core/router/router.dart';
import 'package:arcana_app/domain/repositories/auth_irepository.dart';
import 'package:arcana_app/domain/repositories/banner_irepository.dart';
import 'package:arcana_app/domain/repositories/category_irepository.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:arcana_app/core/injector/injector.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(getIt.get<AuthIRepository>()),
        ),
        BlocProvider(
          create: (context) => CategoryBloc(getIt.get<CategoryIRepository>())
            ..add(
              CategoryGetCategoriesEvent(),
            ),
        ),
        BlocProvider(
          create: (context) => BannerBloc(getIt.get<BannerIRepository>())
            ..add(
              BannerGetBannersEvent(),
            ),
        ),
      ],
      child: Sizer(
        builder: (p0, p1, p2) {
          return MaterialApp.router(
            title: 'Material App',
            routerConfig: router,
            theme: ThemeData(
              fontFamily: FontFamily.sFProDisplay,
            ),
          );
        },
      ),
    );
  }
}
