import 'package:flutter/material.dart';
import 'package:pixelfield_test_project/screens/details/details.dart';

class HistorySubview extends StatelessWidget {
  const HistorySubview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [HistoryItem(isFirstItem: true), HistoryItem(), HistoryItem()],
    );
  }
}
