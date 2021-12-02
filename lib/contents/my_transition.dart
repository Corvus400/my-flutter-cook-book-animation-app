import 'package:flutter/material.dart';

class MyTransition extends StatefulWidget {
  const MyTransition({Key? key}) : super(key: key);

  @override
  _MyTransitionState createState() => _MyTransitionState();
}

class _MyTransitionState extends State<MyTransition> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Animate a page route transition'),
    );
  }
}
