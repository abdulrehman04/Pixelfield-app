import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelfield_test_project/configs/configs.dart';

class PageHeading extends StatelessWidget {
  const PageHeading({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: AppTheme.kGrey1Color,
        fontSize: 32.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
