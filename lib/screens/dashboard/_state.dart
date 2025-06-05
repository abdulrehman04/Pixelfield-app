part of '../dashboard/dashboard.dart';

class _ScreenState extends ChangeNotifier {
  static _ScreenState s(BuildContext context, [listen = false]) =>
      Provider.of<_ScreenState>(context, listen: listen);

  int calculateIndex(String location) {
    if (location.startsWith(AppRoutes.scan)) return 0;
    if (location.startsWith(AppRoutes.myCollection)) return 1;
    if (location.startsWith(AppRoutes.shop)) return 2;
    if (location.startsWith(AppRoutes.settings)) return 3;
    return 0;
  }

  void onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go(AppRoutes.scan);
        break;
      case 1:
        context.go(AppRoutes.myCollection);
        break;
      case 2:
        context.go(AppRoutes.shop);
        break;
      case 3:
        context.go(AppRoutes.settings);
        break;
    }
  }
}
