import 'package:bmi_calculator/res/colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      background: lBColor,
      primary: lPrimaryColor,
      onBackground: lFontColor,
      primaryContainer: lDivColor,
      onPrimaryContainer: lFontColor,
      secondaryContainer: lMIconColor,
      onSecondaryContainer: lFIconColor,
      surface: lLableColor,
    ));
var darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(
      background: dBColor,
      primary: dPrimaryColor,
      onBackground: dFontColor,
      primaryContainer: dDivColor,
      onPrimaryContainer: dFontColor,
      secondaryContainer: dMIconColor,
      onSecondaryContainer: dFIconColor,
      surface: dLableColor,
    ));
