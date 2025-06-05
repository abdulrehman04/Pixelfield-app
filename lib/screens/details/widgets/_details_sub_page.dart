part of '../details.dart';

class DetailsSubPage extends StatelessWidget {
  const DetailsSubPage({super.key, required this.details});

  final BottleDetails details;

  @override
  Widget build(BuildContext context) {
    List detailItems = [
      'Distillery',
      'Region',
      'Country',
      'Type',
      'Age',
      'Filled',
      'Bottled',
    ];
    return Column(
      children:
          detailItems.map((e) {
            return Padding(
              padding: EdgeInsets.only(
                bottom:
                    detailItems.indexOf(e) != detailItems.length - 1 ? 16.h : 0,
              ),
              child: KeyValueDetails(keyVal: e, value: e),
            );
          }).toList(),
    );
  }
}
