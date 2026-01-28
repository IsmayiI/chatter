import 'package:chatter/features/auth/screens/login_screen.dart';
import 'package:chatter/features/auth/screens/otp_screen.dart';
import 'package:chatter/features/landing/screens/landing_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes { login, landing, otp }

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
      GoRoute(
        path: '/otp',
        name: AppRoutes.otp.name,
        builder: (context, state) {
          final verificationId = state.extra as String;
          return OTPScreen(verificationId: verificationId);
        },
      ),
    ],
  );
}
