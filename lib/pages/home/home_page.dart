import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heyThere/utils/theme/colors.dart';
import 'package:heyThere/utils/theme/text_styles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _backgroundColor;
  List<Color> _gradienColorsList;
  Random _random;
  @override
  void initState() {
    _backgroundColor = AppColors.white_FFFFFF;
    _gradienColorsList = [
      AppColors.red_FF0000,
      AppColors.orange_FF7F00,
      AppColors.yellow_FFFF00,
      AppColors.green_00FF00,
      AppColors.blue_0000FF,
      AppColors.purple_4B0082,
      AppColors.pink_9400D3,
    ];
    _random = Random();
    super.initState();
  }

  Color changeColor() {
    Color color;
    int red = _random.nextInt(256);
    int green = _random.nextInt(256);
    int blue = _random.nextInt(256);
    color = Color.fromRGBO(red, green, blue, 1.0);
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        setState(() {
          _backgroundColor = changeColor();
          _gradienColorsList =
              List<Color>.generate(7, (index) => changeColor());
        });
      },
      child: Center(
        child: buildTitle('Hey There'),
      ),
    );
  }

  Widget buildTitle(String text) {
    return AnimatedContainer(
      duration: Duration(
        milliseconds: 300,
      ),
      padding: EdgeInsets.all(24),
      decoration: buildBoxDecoration(),
      child: Text(
        text,
        style: TextStyles.getStyle().mainText24BoldBlack,
      ),
    );
  }

  Decoration buildBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(45),
      border: Border.all(
        color: AppColors.white_FFFFFF,
        style: BorderStyle.solid,
        width: 4,
      ),
      boxShadow: [
        BoxShadow(
          blurRadius: 14,
          spreadRadius: 2,
          color: AppColors.black_000000.withOpacity(0.35),
        )
      ],
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: _gradienColorsList,
      ),
    );
  }
}
