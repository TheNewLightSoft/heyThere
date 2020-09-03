import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  static AppTheme _themeData;
  ThemeData themeData;

  AppTheme._internal(BuildContext context) {
    themeData = ThemeData(
      primaryColor: AppColors.white_FFFFFF,
      splashColor: Colors.transparent,
      backgroundColor: AppColors.white_FFFFFF,
      scaffoldBackgroundColor: AppColors.white_FFFFFF,
      appBarTheme: AppBarTheme(
        color: AppColors.white_FFFFFF,
        elevation: 0,
        iconTheme: IconThemeData(),
        actionsIconTheme: IconThemeData(),
      ),
      iconTheme: IconThemeData(),
      buttonTheme: ButtonThemeData(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        splashColor: Colors.transparent,
      ),
      disabledColor: AppColors.white_FFFFFF,
      textTheme: TextTheme(),
    );
  }

  static AppTheme getAppTheme(BuildContext context) {
    if (_themeData == null) {
      _themeData = AppTheme._internal(context);
      return _themeData;
    } else {
      return _themeData;
    }
  }
}
