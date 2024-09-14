import 'package:arcana_app/features/auth/views/login_view.dart';
import 'package:arcana_app/features/auth/views/register_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: "/login",
  routes: [
    GoRoute(
      path: "/login",
      builder: (context, state) => LoginView(),
    ),
    GoRoute(
      path: "/register",
      builder: (context, state) => RegisterView(),
    ),
  ],
);
