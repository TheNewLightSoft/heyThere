import 'dart:math';

import 'package:flutter/cupertino.dart';

Color changeColor() {
  Random _random = Random();
  Color color;
  int red = _random.nextInt(256);
  int green = _random.nextInt(256);
  int blue = _random.nextInt(256);
  color = Color.fromRGBO(red, green, blue, 1.0);
  return color;
}
