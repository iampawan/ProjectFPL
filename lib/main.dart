import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:fplproject/coolors.dart';
import 'package:fplproject/pages/riverpod_test_page.dart';
import 'package:fplproject/pages/workout_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: blueish));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        // theme: ThemeData(brightness: Brightness.dark),
        home: RiverPodTestPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
