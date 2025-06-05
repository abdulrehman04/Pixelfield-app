import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelfield_test_project/configs/configs.dart';
import 'package:pixelfield_test_project/router/routes.dart';
import 'package:pixelfield_test_project/widgets/responsive.dart';
import 'package:provider/provider.dart';

part '../dashboard/_state.dart';
part './views/_mobile.dart';
part './views/_desktop.dart';
part './views/_tablet.dart';
part './widgets/_nav_bar_item.dart';
part './widgets/_base_view.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _ScreenState(),
      child: SafeArea(
        child: Responsive(
          mobile: _Mobile(child),
          tablet: _Tablet(child),
          desktop: _Desktop(child),
        ),
      ),
    );
  }
}
