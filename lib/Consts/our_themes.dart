import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather_app/Consts/colors.dart';

class CustomThemes{

  static final lightTheme = ThemeData(
    cardColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Vx.gray800,
    iconTheme: const IconThemeData(
      color: Vx.gray600,
    ),
  );


  static final darkTheme = ThemeData(
    cardColor: bgColor.withOpacity(0.6),
    scaffoldBackgroundColor: bgColor,
    primaryColor: Colors.white,
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  );

}