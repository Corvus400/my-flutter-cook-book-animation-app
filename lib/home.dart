import 'package:flutter/material.dart';

import 'data/bottom_navigation_type.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
    required this.restorationId,
  }) : super(key: key);

  final String restorationId;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with RestorationMixin {
  final RestorableInt _currentIndex = RestorableInt(0);

  @override
  String? get restorationId => widget.restorationId;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_currentIndex, 'bottom_navigation_tab_index');
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final fontSize = Theme.of(context).textTheme.caption?.fontSize ?? 0;

    var bottomNavigationBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: const Icon(Icons.one_k),
          label: BottomNavigationType.transition.name
      ),
      BottomNavigationBarItem(
          icon: const Icon(Icons.two_k),
          label: BottomNavigationType.physics.name
      ),
      BottomNavigationBarItem(
          icon: const Icon(Icons.three_k),
          label: BottomNavigationType.properties.name
      ),
      BottomNavigationBarItem(
          icon: const Icon(Icons.four_k),
          label: BottomNavigationType.fade.name
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(_title(BottomNavigationType.values[_currentIndex.value]))
      ),
      body: Center(
        child: Container(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavigationBarItems,
        currentIndex: _currentIndex.value,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: fontSize,
        unselectedFontSize: fontSize,
        onTap: (index) {
          setState(() {
            _currentIndex.value = index;
          });
        },
        selectedItemColor: colorScheme.onPrimary,
        unselectedItemColor: colorScheme.onPrimary.withOpacity(0.38),
        backgroundColor: colorScheme.primary,
      ),
    );
  }

  @override
  void dispose() {
    _currentIndex.dispose();
    super.dispose();
  }

  String _title(BottomNavigationType type) {
    switch (type) {
      case BottomNavigationType.transition:
        return 'Animate a page route transition';
      case BottomNavigationType.physics:
        return 'Physics simulation';
      case BottomNavigationType.properties:
        return 'Animate the properties of a container';
      case BottomNavigationType.fade:
        return 'Fade a widget in and out';
    }
  }
}