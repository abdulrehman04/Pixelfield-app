part of '../dashboard/dashboard.dart';

class _ScreenState extends ChangeNotifier {
  static _ScreenState s(BuildContext context, [listen = false]) =>
      Provider.of<_ScreenState>(context, listen: listen);

  getIndex(Widget child) {
    if (child is MyCollection) {
      return 1;
    } else if (child is ScanScreen) {
      return 0;
    } else if (child is ShopScreen) {
      return 2;
    } else if (child is SettingsScreen) {
      return 3;
    }
  }
}
