import 'package:flutter/material.dart';

class PlugkerWidth {
  static size(context, double col) {
    double value = (col / 12) * MediaQuery.of(context).size.width;
    String value2 = value.toStringAsFixed(2);
    double value3 = double.parse(value2);
    return value3;
  }
}
