import 'package:chatter/features/auth/screens/login_screen.dart';
import 'package:chatter/features/landing/screens/landing_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes { login, landing }

GoRouter goRouter() {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/landing',
        name: AppRoutes.landing.name,
        builder: (context, state) => const LandingScreen(),
      ),
      GoRoute(
        path: '/login',
        name: AppRoutes.login.name,
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );
}
