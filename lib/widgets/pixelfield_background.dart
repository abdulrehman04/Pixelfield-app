import 'package:flutter/material.dart';
import 'package:pixelfield_test_project/configs/configs.dart';

class PixelfieldBackground extends StatelessWidget {
  const PixelfieldBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.kbgColor,
      child: Image.asset('assets/images/png/bgImg.png'),
    );
  }
}
