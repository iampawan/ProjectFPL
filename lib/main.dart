import 'package:flutter/material.dart';
import 'package:fplproject/coolors.dart';
import 'package:fplproject/goals_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(brightness: Brightness.dark),
    //  theme: ThemeData.dark(),
      home: GoalsPage(),
    );
  }
}
