import 'package:flutter/material.dart';
import 'package:pixelfield_test_project/configs/configs.dart';

class PixelfieldBackground extends StatelessWidget {
  const PixelfieldBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: AppTheme.kbgColor,
      child: Image.asset('assets/images/png/bgImg.png', fit: BoxFit.cover),
    );
  }
}
