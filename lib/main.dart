import 'package:flutter/material.dart';
import 'package:fplproject/pages/colortest_page.dart';
import 'package:fplproject/pages/goals_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(brightness: Brightness.dark),
      home: GoalsPage(),
    );
  }
}
