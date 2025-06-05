import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelfield_test_project/configs/configs.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final TextStyle? textStyle;
  final IconData? icon;
  final bool isSquared;
  const AppButton({
    required this.label,
    required this.onPressed,
    this.height,
    this.width,
    this.backgroundColor,
    this.textStyle,
    this.icon,
    this.isSquared = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: width ?? 200.w,
        height: height ?? 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(isSquared ? 8 : 30),
          color: backgroundColor ?? AppTheme.kPrimaryColor,
        ),
        child:
            icon != null
                ? Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(icon!, color: AppTheme.kGrey1Color),
                      20.horizontalSpace,
                      Text(
                        label,
                        style:
                            textStyle ??
                            textStyle ??
                            Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                )
                : Center(
                  child: Text(
                    label,
                    style:
                        textStyle ??
                        textStyle ??
                        GoogleFonts.ebGaramond(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
      ),
    );
  }
}
