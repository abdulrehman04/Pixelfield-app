import 'package:go_router/go_router.dart';
import 'package:pixelfield_test_project/router/routes.dart';
import 'package:pixelfield_test_project/screens/splash/splash.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) {
          return const Splash();
        },
      ),
    ],
  );
}
