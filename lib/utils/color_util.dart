import 'dart:math';

import 'package:flutter/material.dart';

class ColorUtil {
  static getUniqueColor() {
    return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }
}
