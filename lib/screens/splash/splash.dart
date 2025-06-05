import 'package:flutter/material.dart';
import 'package:pixelfield_test_project/widgets/pixelfield_background.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: PixelfieldBackground(child: Text('data')));
  }
}
