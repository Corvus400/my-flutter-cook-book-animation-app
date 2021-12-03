import 'package:flutter/material.dart';

class PhysicsSimulation extends StatefulWidget {
  const PhysicsSimulation({Key? key}) : super(key: key);

  @override
  _PhysicsSimulationState createState() => _PhysicsSimulationState();
}

class _PhysicsSimulationState extends State<PhysicsSimulation> {
  @override
  Widget build(BuildContext context) {
    return DraggableCard(
        child: FlutterLogo(
            size: 128
        )
    );
  }
}

class DraggableCard extends StatefulWidget {
  const DraggableCard({required this.child, Key? key}) : super(key: key);

  final Widget child;

  @override
  _DraggableCardState createState() => _DraggableCardState();
}

class _DraggableCardState extends State<DraggableCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Card(
        child: widget.child
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

