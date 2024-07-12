import 'package:designpattern/Factory%20Design%20Pattern/1.dart';
import 'package:designpattern/Factory%20Design%20Pattern/2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AbstractFactoryImpl().buildButton(context, 'Hello', () {}),
            AbstractFactoryImpl().IndicatorBar(),
          ],
        ),
      ),
    );
  }
}
