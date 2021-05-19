import 'package:flutter/material.dart';
import 'package:horizons/screens/home.dart';

void main() {
  runApp(HorizonsApp());
}

class HorizonsApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Horizons Weather',
      home: HomePage(),
    );
  }
}
