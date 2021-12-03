import 'package:flutter/material.dart';

class FadeWidget extends StatefulWidget {
  const FadeWidget({Key? key}) : super(key: key);

  @override
  _FadeWidgetState createState() => _FadeWidgetState();
}

class _FadeWidgetState extends State<FadeWidget> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
            child: AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              child: Container(
                width: 200.0,
                height: 200.0,
                color: Colors.green,
              ),
            )
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  _visible = !_visible;
                });
              },
              tooltip: 'Toggle Opacity',
              child: const Icon(Icons.flip),
            ),
          ),
        )
      ],
    );
  }
}
