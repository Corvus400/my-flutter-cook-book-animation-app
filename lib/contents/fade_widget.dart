import 'package:flutter/material.dart';

class FadeWidget extends StatefulWidget {
  const FadeWidget({Key? key}) : super(key: key);

  @override
  _FadeWidgetState createState() => _FadeWidgetState();
}

class _FadeWidgetState extends State<FadeWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.green,
      )
    );
  }
}
