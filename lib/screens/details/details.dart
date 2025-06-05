import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelfield_test_project/configs/configs.dart';
import 'package:pixelfield_test_project/models/bottle_details.dart';
import 'package:pixelfield_test_project/models/bottle_model.dart';
import 'package:pixelfield_test_project/screens/details/static/subpage_enum.dart';
import 'package:pixelfield_test_project/screens/details/widgets/_history_subview.dart';
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
part './widgets/_note_item.dart';
part './widgets/_history_item.dart';
part './widgets/_collection_name.dart';
part './widgets/_subpage_row.dart';
part './widgets/_bottle_status.dart';
part './_state.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.id,
    required this.collectionName,
    required this.item,
  });

  final String id;
  final Bottle item;
  final String collectionName;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _ScreenState(),
      child: SafeArea(
        child: Scaffold(
          body: Responsive(
            mobile: _Mobile(collectionName, item),
            tablet: const _Tablet(),
            desktop: const _Desktop(),
          ),
        ),
      ),
    );
  }
}
