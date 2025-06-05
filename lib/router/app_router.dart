import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pixelfield_test_project/router/routes.dart';
import 'package:pixelfield_test_project/screens/dashboard/dashboard.dart';
import 'package:pixelfield_test_project/screens/my_collection/my_collection.dart';
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
      ShellRoute(
        builder: (context, state, child) {
          return Dashboard(child: child);
        },
        routes: [
          GoRoute(
            path: AppRoutes.myCollection,
            pageBuilder:
                (context, state) => CustomTransitionPage(
                  key: state.pageKey,
                  child: const MyCollection(),
                  transitionsBuilder: (
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                ),
          ),
        ],
      ),
    ],
  );
}
