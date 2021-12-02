import 'package:flutter/material.dart';

class PropertiesContainer extends StatefulWidget {
  const PropertiesContainer({Key? key}) : super(key: key);

  @override
  _PropertiesContainerState createState() => _PropertiesContainerState();
}

class _PropertiesContainerState extends State<PropertiesContainer> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Animate the properties of a container'),
    );
  }
}
