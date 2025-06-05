import 'package:flutter/material.dart';
import 'package:pixelfield_test_project/screens/my_collection/my_collection.dart';
import 'package:pixelfield_test_project/screens/scan/scan.dart';
import 'package:pixelfield_test_project/screens/settings/settings.dart';
import 'package:pixelfield_test_project/screens/shop/shop.dart';
import 'package:provider/provider.dart';

part '../dashboard/_state.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    _ScreenState state = _ScreenState.s(context);
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {},
        currentIndex: state.getIndex(child),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Scan',
          ),
        ],
      ),
    );
  }
}
