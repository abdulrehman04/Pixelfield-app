import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelfield_test_project/configs/configs.dart';
import 'package:pixelfield_test_project/router/routes.dart';
import 'package:pixelfield_test_project/widgets/ui/page_heading.dart';
import 'package:pixelfield_test_project/widgets/responsive.dart';

part './views/_mobile.dart';
part './views/_desktop.dart';
part './views/_tablet.dart';
part './widgets/_base_view.dart';

class MyCollection extends StatelessWidget {
  const MyCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Responsive(
          mobile: const _Mobile(),
          tablet: const _Tablet(),
          desktop: const _Desktop(),
        ),
      ),
    );
  }
}
