import 'package:flutter/material.dart';
import 'package:genotek/utils/extensions/hex_color.dart';

final cardColor = HexColor.fromHex('#E5E5E5');
final dividerColor = HexColor.fromHex('#DBDBDB');
final accentBlueGrayColor = HexColor.fromHex('#1D93D2');
final textGrayColor = HexColor.fromHex('#4A4A4A');

final ThemeData genotekLightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    color: accentBlueGrayColor,
    iconTheme: const IconThemeData(color: Colors.white),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: textGrayColor),
  canvasColor: Colors.white,
  cardColor: cardColor,
  dividerColor: dividerColor,
  highlightColor: accentBlueGrayColor,
  primaryColorDark: textGrayColor,
  textTheme: TextTheme(
    displayLarge: TextStyle(fontSize: 96, fontWeight: FontWeight.w300, color: textGrayColor),
    displayMedium: TextStyle(fontSize: 60, fontWeight: FontWeight.w400, color: textGrayColor),
    displaySmall: TextStyle(fontSize: 48, fontWeight: FontWeight.w400, color: textGrayColor),
    headlineMedium: TextStyle(fontSize: 36, fontWeight: FontWeight.w400, color: textGrayColor),
    headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: textGrayColor),
    titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: textGrayColor),
    bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: textGrayColor),
    bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: textGrayColor),
    bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: textGrayColor),
    labelLarge: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.white),
  ),
);
