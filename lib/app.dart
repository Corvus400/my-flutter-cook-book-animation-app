import 'package:animation_cook_book_app/routes.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class FlutterAnimationCookBookApp extends StatelessWidget {
  const FlutterAnimationCookBookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation Cook Book App',
      home: Home(),
      routes: kRoutes,
    );
  }
}
