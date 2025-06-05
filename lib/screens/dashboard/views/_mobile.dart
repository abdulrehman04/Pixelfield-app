part of '../dashboard.dart';

class _Mobile extends StatelessWidget {
  const _Mobile(this.child);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BaseView(child: child);
  }
}
