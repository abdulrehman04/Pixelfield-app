import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pixelfield_test_project/router/routes.dart';
import 'package:pixelfield_test_project/widgets/pixelfield_background.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      context.go(AppRoutes.myCollection);
    });
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
