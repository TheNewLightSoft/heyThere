import 'package:flutter/material.dart';
import 'colors.dart';

class TextStyles {
  static TextStyles _styles;

  TextStyle mainText24BoldBlack;

  TextStyles._internal() {
    mainText24BoldBlack = TextStyle(
      height: 1,
      fontSize: 24,
      color: AppColors.black_000000,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyles getStyle() {
    if (_styles == null) {
      _styles = TextStyles._internal();
      return _styles;
    } else {
      return _styles;
    }
  }
}
