import 'package:arcana_app/core/router/route_name.dart';
import 'package:arcana_app/features/auth/views/login_view.dart';
import 'package:arcana_app/features/auth/views/register_view.dart';
import 'package:arcana_app/features/cart/view/proccess_view.dart';
import 'package:arcana_app/features/category/views/category_view.dart';
import 'package:arcana_app/features/product/views/produc_view.dart';
import 'package:arcana_app/features/profile/views/pages/address_page.dart';
import 'package:arcana_app/features/root/views/root_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: RouteName.login,
  routes: [
    GoRoute(
      path: RouteName.login,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: RouteName.register,
      builder: (context, state) => const RegisterView(),
    ),
    GoRoute(
      path: RouteName.root,
      builder: (context, state) => const RootView(),
      routes: [
        GoRoute(
          path: RouteName.categoryRoute,
          builder: (context, state) => const CategoryView(),
        ),
        GoRoute(
          path: RouteName.productRoute,
          builder: (context, state) => const ProductView(),
        ),
        GoRoute(
          path: RouteName.addressRoute,
          builder: (context, state) => const AddressPage(),
        ),
        GoRoute(
          path: RouteName.proccessRoute,
          builder: (context, state) => const ProccessView(),
        ),
      ],
    ),
  ],
);
