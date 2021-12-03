import 'dart:math';

import 'package:flutter/material.dart';

class PropertiesContainer extends StatefulWidget {
  const PropertiesContainer({Key? key}) : super(key: key);

  @override
  _PropertiesContainerState createState() => _PropertiesContainerState();
}

class _PropertiesContainerState extends State<PropertiesContainer> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: AnimatedContainer(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  final random = Random();

                  _width = random.nextInt(300).toDouble();
                  _height = random.nextInt(300).toDouble();

                  _color = Color.fromRGBO(
                    random.nextInt(256),
                    random.nextInt(256),
                    random.nextInt(256),
                    1,
                  );

                  _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
                });
              },
              child: const Icon(Icons.play_arrow),
            ),
          ),
        )
      ],
    );
  }
}
