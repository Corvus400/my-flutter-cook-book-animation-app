import 'package:flutter/material.dart';

import 'home.dart';

class FlutterAnimationCookBookApp extends StatelessWidget {
  const FlutterAnimationCookBookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Animation Cook Book App',
      home: Home(
        restorationId: 'home_bottom_navigation',
      ),
    );
  }
}
