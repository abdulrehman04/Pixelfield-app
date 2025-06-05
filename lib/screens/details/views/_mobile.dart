part of '../details.dart';

class _Mobile extends StatelessWidget {
  const _Mobile(this.collectionName, this.bottle);

  final Bottle bottle;
  final String collectionName;

  @override
  Widget build(BuildContext context) {
    return BaseView(bottle: bottle, collectionName: collectionName);
  }
}
