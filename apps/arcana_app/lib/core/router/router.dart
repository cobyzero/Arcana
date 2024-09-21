import 'package:arcana_app/features/auth/views/login_view.dart';
import 'package:arcana_app/features/auth/views/register_view.dart';
import 'package:arcana_app/features/category/views/category_view.dart';
import 'package:arcana_app/features/product/views/produc_view.dart';
import 'package:arcana_app/features/root/views/root_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: "/login",
  routes: [
    GoRoute(
      path: "/login",
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: "/register",
      builder: (context, state) => const RegisterView(),
    ),
    GoRoute(
      path: "/root",
      builder: (context, state) => const RootView(),
      routes: [
        GoRoute(
          path: "category",
          builder: (context, state) => const CategoryView(),
        ),
        GoRoute(
          path: "product",
          builder: (context, state) => const ProductView(),
        ),
      ],
    ),
  ],
);
