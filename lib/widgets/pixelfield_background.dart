import 'package:flutter/material.dart';
import 'package:pixelfield_test_project/configs/configs.dart';

class PixelfieldBackground extends StatelessWidget {
  const PixelfieldBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.kbgColor,
        image: DecorationImage(
          image: AssetImage('assets/images/png/bgImg.png'),
          fit: BoxFit.cover,
        ),
      ),
      height: MediaQuery.of(context).size.height,
      child: child,
    );
  }
}
