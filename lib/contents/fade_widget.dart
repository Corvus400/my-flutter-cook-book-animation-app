import 'package:flutter/material.dart';

class FadeWidget extends StatefulWidget {
  const FadeWidget({Key? key}) : super(key: key);

  @override
  _FadeWidgetState createState() => _FadeWidgetState();
}

class _FadeWidgetState extends State<FadeWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Fade a widget in and out'),
    );
  }
}
