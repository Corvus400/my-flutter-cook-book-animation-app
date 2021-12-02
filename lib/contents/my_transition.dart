import 'package:flutter/material.dart';

class MyTransition extends StatelessWidget {
  const MyTransition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(_createRoute());
        },
        child: const Text('Go!'),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      final curveTween = CurveTween(curve: curve);
      final tween = Tween(begin: begin, end: end).chain(curveTween);

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    }
  );
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Page 2'),
        ),
      ),
    );
  }
}
