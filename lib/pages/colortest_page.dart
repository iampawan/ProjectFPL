import 'package:flutter/material.dart';
import 'package:fplproject/widgets/colorstf.dart';
import 'package:fplproject/widgets/colorstl.dart';

class ColorTestPage extends StatefulWidget {
  @override
  _ColorTestPageState createState() => _ColorTestPageState();
}

class _ColorTestPageState extends State<ColorTestPage> {
  final List<Widget> colorWidgets = [
    ColorStf(
      key: UniqueKey(),
    ),
    ColorStf(
      key: UniqueKey(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: colorWidgets,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.swap_horiz),
          onPressed: () {
            colorWidgets.insert(1, colorWidgets.removeAt(0));
            setState(() {});
          },
        ),
      ),
    );
  }
}
