import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelfield_test_project/widgets/pixelfield_background.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PixelfieldBackground(
        child: Center(
          child: Image.asset(
            'assets/images/png/app_icon.png',
            height: 140.h,
            width: 140.w,
          ),
        ),
      ),
    );
  }
}
