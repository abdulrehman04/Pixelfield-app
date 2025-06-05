import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelfield_test_project/configs/configs.dart';
import 'package:pixelfield_test_project/screens/details/static/subpage_enum.dart';
import 'package:pixelfield_test_project/widgets/buttons/app_button.dart';
import 'package:pixelfield_test_project/widgets/ui/pixelfield_background.dart';
import 'package:pixelfield_test_project/widgets/responsive.dart';
import 'package:provider/provider.dart';

part './views/_mobile.dart';
part './views/_desktop.dart';
part './views/_tablet.dart';
part './widgets/_base_view.dart';
part './widgets/_key_value_details.dart';
part './widgets/_details_sub_page.dart';
part './widgets/_tasting_notes_subview.dart';
part './_state.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _ScreenState(),
      child: SafeArea(
        child: Scaffold(
          body: Responsive(
            mobile: const _Mobile(),
            tablet: const _Tablet(),
            desktop: const _Desktop(),
          ),
        ),
      ),
    );
  }
}
