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

class _DraggableCardState extends State<DraggableCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Alignment> _animation;
  Alignment _dragAlignment = Alignment.center;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _controller.addListener(() {
      setState(() {
        _dragAlignment = _animation.value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onPanDown: (details) {
        _controller.stop();
      },
      onPanUpdate: (details) {
        setState(() {
          _dragAlignment += Alignment(
            details.delta.dx / (size.width / 2),
            details.delta.dy / (size.height / 2),
          );
          print(_dragAlignment);
        });
      },
      onPanEnd: (details) {
        _runAnimation();
      },
      child: Align(
        alignment: _dragAlignment,
        child: Card(
          child: widget.child
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _runAnimation() {
    _animation = _controller.drive(
      AlignmentTween(
        begin: _dragAlignment,
        end: Alignment.center,
      ),
    );
    _controller.reset();
    _controller.forward();
  }
}

