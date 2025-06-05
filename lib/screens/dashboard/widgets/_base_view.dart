part of '../dashboard.dart';

class BaseView extends StatelessWidget {
  const BaseView({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    _ScreenState state = _ScreenState.s(context);
    final location = GoRouterState.of(context).uri.toString();
    final currentIndex = state.calculateIndex(location);

    return Scaffold(
      body: child,
      bottomNavigationBar: Container(
        color: AppTheme.kDarkbgColor,
        height: 80.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NavBarItem(
              title: 'Scan',
              img: 'scan',
              isSelected: currentIndex == 0,
            ),
            NavBarItem(
              title: 'Collection',
              img: 'collection',
              isSelected: currentIndex == 1,
            ),
            NavBarItem(
              title: 'Shop',
              img: 'shop',
              isSelected: currentIndex == 2,
            ),
            NavBarItem(
              title: 'Settings',
              img: 'settings',
              isSelected: currentIndex == 3,
            ),
          ],
        ),
      ),
    );
  }
}
