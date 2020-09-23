import 'package:flutter/material.dart';
import 'package:fplproject/utils/color_util.dart';

class ColorStl extends StatelessWidget {
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
