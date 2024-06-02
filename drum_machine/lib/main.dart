// main.dart
import 'package:drum_machine/pages/electronics.dart';
import 'package:drum_machine/pages/main.page.dart';
import 'package:drum_machine/pages/piano.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int selectedIndex = 0;
final List<Widget> pages = [
  const DrumPage(),
  const PianoPage(),
  const Electronics()
];

class _MyAppState extends State<MyApp> {
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: FlashyTabBar(
          selectedIndex: selectedIndex,
          animationCurve: Curves.linear,
          iconSize: 30,
          onItemSelected: _onItemTapped,
          items: [
            FlashyTabBarItem(
              icon: const Icon(Icons.animation_rounded),
              title: const Text('Effects'),
            ),
            FlashyTabBarItem(
              icon: const Icon(Icons.piano),
              title: const Text('Piano'),
            ),
            FlashyTabBarItem(
              icon: const Icon(Icons.electric_bolt),
              title: const Text('Electronics'),
            ),
          ],
        ),
      ),
    );
  }
}
