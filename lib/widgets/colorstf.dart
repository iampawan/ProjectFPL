import 'package:flutter/material.dart';
import 'package:fplproject/utils/color_util.dart';

class ColorStf extends StatefulWidget {
  ColorStf({Key key}) : super(key: key);
  @override
  _ColorStfState createState() => _ColorStfState();
}

class _ColorStfState extends State<ColorStf> {
  final Color color = ColorUtil.getUniqueColor();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        color: color,
      ),
    );
  }
}
