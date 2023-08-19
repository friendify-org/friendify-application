import 'dart:ui';

import 'package:application/theme/color_palette.dart';
import 'package:flutter/material.dart';
import 'main.dart' as t;

final lightTheme = t.AppTheme(
  primaryTextColor: ColorPalette.greys[8],
  primaryTitleColor: ColorPalette.blackPrimary,
  secondaryTextColor: ColorPalette.greys[6],
  primaryButtonTheme: const t.ButtonTheme(
    textColor: ColorPalette.primaryWhite,
    backgroundColor: ColorPalette.linearButton,
  ),
  secondaryButtonTheme: t.ButtonTheme(
    textColor: ColorPalette.greys[8],
    backgroundColor: const LinearGradient(
      colors: [
        Color(0xFFE7E8EA),
        Color(0xFFE7E8EA),
      ],
    ),
  ),
  backgroundColor: LinearGradient(
    colors: [ColorPalette.lights[0], ColorPalette.lights[0]],
  ),
  inActiveButtonTheme: const t.ButtonTheme(
    textColor: ColorPalette.blackSecondary50,
    backgroundColor: LinearGradient(
      colors: [Colors.transparent, Colors.transparent],
    ),
  ),
  tabButtonTheme: t.TabButtonTheme(
    backgroundColor: ColorPalette.lights[4],
  ),
  inputTheme: t.InputTheme(
    backgroundColor: ColorPalette.blackPrimary10,
    placeHolderColor: ColorPalette.blackPrimary50,
    primaryTextColor: ColorPalette.blackPrimary90,
    errorTextColor: ColorPalette.lights[7],
  ),
  checkBoxTheme: t.CheckBoxTheme(
    fillColor: ColorPalette.greys[4],
    textColor: ColorPalette.greys[6],
  ),
  hrefColor: ColorPalette.primary[5],
);
