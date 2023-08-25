import 'package:application/theme/color_palette.dart';
import 'package:flutter/material.dart';

import 'main.dart' as t;

final darkTheme = t.AppTheme(
  primaryTextColor: ColorPalette.lights[0],
  primaryTitleColor: ColorPalette.primaryWhite,
  secondaryTextColor: ColorPalette.greys[2],
  primaryButtonTheme: const t.ButtonTheme(
    textColor: ColorPalette.primaryWhite,
    backgroundColor: ColorPalette.linearButton,
  ),
  backgroundColor: const LinearGradient(
    begin: Alignment(-0.52, 0.86),
    end: Alignment(0.52, -0.86),
    colors: [Color(0xFF060819), Color(0xFF1E2233), Color(0xFF232738)],
  ),
  secondaryButtonTheme: const t.ButtonTheme(
    textColor: ColorPalette.blackPrimary90,
    backgroundColor: LinearGradient(
      colors: [
        Color(0xFFE7E8EA),
        Color(0xFFE7E8EA),
      ],
    ),
  ),
  inActiveButtonTheme: const t.ButtonTheme(
    textColor: ColorPalette.blackPrimary50,
    backgroundColor: LinearGradient(
      colors: [Colors.transparent, Colors.transparent],
    ),
  ),
  tabButtonTheme: t.TabButtonTheme(
    backgroundColor: ColorPalette.darks[4],
  ),
  inputTheme: t.InputTheme(
    backgroundColor: ColorPalette.darks[2],
    placeHolderColor: ColorPalette.blackPrimary40,
    primaryTextColor: ColorPalette.primaryWhite,
    errorTextColor: ColorPalette.darks[7],
  ),
  checkBoxTheme: t.CheckBoxTheme(
    fillColor: ColorPalette.greys[3],
    textColor: ColorPalette.greys[3],
  ),
  hrefColor: ColorPalette.primary[5],
  navbarTheme: t.NavbarTheme(
    itemColor: ColorPalette.darks[0],
    activeItemColor: ColorPalette.primary[0],
    backgroundColor: ColorPalette.darks[1],
  ),
  alert: ColorPalette.redAlert,
  ownerMessageTheme: t.MessageTheme(
    backgroundColor: ColorPalette.darks[3],
    textColor: ColorPalette.primaryWhite,
  ),
  chatFooterTheme: t.ChatFooterTheme(
    inputTheme: t.InputTheme(
      backgroundColor: ColorPalette.blackPrimary10,
      placeHolderColor: ColorPalette.blackPrimary50,
      primaryTextColor: ColorPalette.blackPrimary90,
      errorTextColor: ColorPalette.lights[7],
    ),
    primaryButtonTheme: const t.ButtonTheme(
      textColor: ColorPalette.primaryWhite,
      backgroundColor: ColorPalette.linearButton,
    ),
    secondaryButtonTheme: t.ButtonTheme(
      textColor: ColorPalette.blackPrimary,
      backgroundColor: LinearGradient(
        colors: [
          ColorPalette.greys[6],
          ColorPalette.greys[6],
        ],
      ),
    ),
  ),
);
