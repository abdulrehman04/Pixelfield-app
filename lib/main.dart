import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelfield_test_project/configs/configs.dart';
import 'package:pixelfield_test_project/router/app_router.dart';
import 'package:pixelfield_test_project/screens/splash/splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppMedia.init(context);
    return ScreenUtilInit(
      designSize: const Size(392.7, 781),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Crewmeister App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: AppTheme.kPrimaryColor,
            ),
            textTheme: GoogleFonts.ebGaramondTextTheme(),
            primaryColor: AppTheme.kPrimaryColor,
          ),
          routerDelegate: AppRouter.router.routerDelegate,
          routeInformationParser: AppRouter.router.routeInformationParser,
          routeInformationProvider: AppRouter.router.routeInformationProvider,
        );
      },
    );
  }
}
