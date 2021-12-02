import 'package:flutter/material.dart';

class PhysicsSimulation extends StatefulWidget {
  const PhysicsSimulation({Key? key}) : super(key: key);

  @override
  _PhysicsSimulationState createState() => _PhysicsSimulationState();
}

class _PhysicsSimulationState extends State<PhysicsSimulation> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Animate a widget using a physics simulation'),
    );
  }
}
