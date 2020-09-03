import 'package:flutter/material.dart';
import 'package:heyThere/navigation.dart';
import 'package:heyThere/pages/home/home_page.dart';
import 'package:heyThere/routes.dart';
import 'package:heyThere/utils/theme/theme.dart';

void main() {
  runApp(HeyThereApp());
}

class HeyThereApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hey There',
      navigatorKey: Keys.navKey,
      theme: AppTheme.getAppTheme(context).themeData,
      routes: routes,
      onGenerateRoute: onGenerateRoutes,
      home: HomePage(),
    );
  }
}
