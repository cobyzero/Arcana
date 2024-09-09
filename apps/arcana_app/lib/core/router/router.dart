import 'package:arcana_app/features/auth/views/login_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: "/login",
  routes: [
    GoRoute(
      path: "/login",
      builder: (context, state) => LoginView(),
    ),
  ],
);
