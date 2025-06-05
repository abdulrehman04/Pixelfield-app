import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pixelfield_test_project/models/bottle_model.dart';
import 'package:pixelfield_test_project/router/routes.dart';
import 'package:pixelfield_test_project/screens/dashboard/dashboard.dart';
import 'package:pixelfield_test_project/screens/details/details.dart';
import 'package:pixelfield_test_project/screens/my_collection/my_collection.dart';
import 'package:pixelfield_test_project/screens/scan/scan.dart';
import 'package:pixelfield_test_project/screens/settings/settings.dart';
import 'package:pixelfield_test_project/screens/shop/shop.dart';
import 'package:pixelfield_test_project/screens/splash/splash.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        pageBuilder: (context, state) => const MaterialPage(child: Splash()),
      ),
      GoRoute(
        path: '${AppRoutes.details}/:id',
        pageBuilder: (context, state) {
          final id = state.pathParameters['id']!;
          final extra = state.extra as Map;
          final item = extra['item'] as Bottle;
          final collection = extra['collectionName'] as String;
          return CustomTransitionPage(
            key: state.pageKey,
            child: DetailsScreen(
              id: id,
              collectionName: collection,
              item: item,
            ),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              return FadeTransition(opacity: animation, child: child);
            },
          );
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
          GoRoute(
            path: AppRoutes.scan,
            pageBuilder:
                (context, state) => CustomTransitionPage(
                  key: state.pageKey,
                  child: const ScanScreen(),
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
          GoRoute(
            path: AppRoutes.shop,
            pageBuilder:
                (context, state) => CustomTransitionPage(
                  key: state.pageKey,
                  child: const ShopScreen(),
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
          GoRoute(
            path: AppRoutes.settings,
            pageBuilder:
                (context, state) => CustomTransitionPage(
                  key: state.pageKey,
                  child: const SettingsScreen(),
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
