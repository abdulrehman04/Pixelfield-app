import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

final customTextTheme = TextTheme(
  headlineLarge: GoogleFonts.ebGaramond(
    fontSize: 32.sp,
    fontWeight: FontWeight.w500,
  ),
  headlineMedium: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w600),
  titleLarge: GoogleFonts.ebGaramond(
    fontSize: 22.sp,
    fontWeight: FontWeight.w500,
  ),

  bodyLarge: GoogleFonts.lato(fontSize: 16.sp),
  bodySmall: GoogleFonts.lato(fontSize: 12.sp),
  bodyMedium: GoogleFonts.lato(fontSize: 14.sp, fontWeight: FontWeight.w700),
  labelLarge: TextStyle(fontSize: 12.sp, color: Colors.grey),
);
