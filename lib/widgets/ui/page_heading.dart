import 'package:flutter/material.dart';
import 'package:pixelfield_test_project/configs/configs.dart';

class PageHeading extends StatelessWidget {
  const PageHeading({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(
        context,
      ).textTheme.headlineLarge?.copyWith(color: AppTheme.kGrey1Color),
    );
  }
}
