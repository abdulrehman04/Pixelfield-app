import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pixelfield_test_project/blocs/collection_bloc/data_provider.dart';
import 'package:pixelfield_test_project/router/routes.dart';
import 'package:pixelfield_test_project/widgets/ui/pixelfield_background.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _warmUpAndNavigate();
    super.initState();
  }

  Future<void> _warmUpAndNavigate() async {
    await DataProvider.instance.preload();
    await Future.delayed(Duration(seconds: 1));

    if (!mounted) return;
    context.go(AppRoutes.myCollection);
  }

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
