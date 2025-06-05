import 'package:flutter/material.dart';
import 'package:pixelfield_test_project/models/bottle_history.dart';
import 'package:pixelfield_test_project/screens/details/details.dart';

class HistorySubview extends StatelessWidget {
  const HistorySubview({super.key, required this.history});

  final List<BottleHistory> history;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          history.map((e) {
            return HistoryItem(
              isFirstItem: history.indexOf(e) == 0,
              history: e,
            );
          }).toList(),
    );
  }
}
