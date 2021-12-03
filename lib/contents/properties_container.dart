import 'package:flutter/material.dart';

class PropertiesContainer extends StatefulWidget {
  const PropertiesContainer({Key? key}) : super(key: key);

  @override
  _PropertiesContainerState createState() => _PropertiesContainerState();
}

class _PropertiesContainerState extends State<PropertiesContainer> {
  final double _width = 50;
  final double _height = 50;
  final Color _color = Colors.green;
  final BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
