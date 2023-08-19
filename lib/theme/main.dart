import 'package:application/theme/default_dark.dart';
import 'package:application/theme/default_light.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/scheduler.dart';

class TextTheme {
  final material.Color primaryColor;
  final material.Color secondaryColor;
  final material.Color placeHolderColor;
  const TextTheme({
    required this.primaryColor,
    required this.secondaryColor,
    required this.placeHolderColor,
  });
}

@immutable
class ButtonTheme {
  final material.Color textColor;
  final material.LinearGradient backgroundColor;
  const ButtonTheme({required this.textColor, required this.backgroundColor});
}

class TabButtonTheme {
  final material.Color backgroundColor;
  const TabButtonTheme({required this.backgroundColor});
}

@immutable
class InputTheme {
  final material.Color backgroundColor;
  final material.Color primaryTextColor;
  final material.Color placeHolderColor;
  final material.Color errorTextColor;

  const InputTheme({
    required this.backgroundColor,
    required this.primaryTextColor,
    required this.placeHolderColor,
    required this.errorTextColor,
  });
}

@immutable
class CheckBoxTheme {
  final material.Color fillColor;
  final material.Color textColor;

  const CheckBoxTheme({
    required this.fillColor,
    required this.textColor,
  });
}

var brightness = SchedulerBinding.instance.window.platformBrightness;

@immutable
class AppTheme {
  final material.Color primaryTextColor;
  final material.Color primaryTitleColor;
  final material.Color secondaryTextColor;
  final material.Color hrefColor;
  final ButtonTheme primaryButtonTheme;
  final ButtonTheme secondaryButtonTheme;
  final ButtonTheme inActiveButtonTheme;
  final material.LinearGradient backgroundColor;
  final TabButtonTheme tabButtonTheme;
  final InputTheme inputTheme;
  final CheckBoxTheme checkBoxTheme;

  const AppTheme({
    required this.primaryTextColor,
    required this.primaryTitleColor,
    required this.secondaryTextColor,
    required this.primaryButtonTheme,
    required this.secondaryButtonTheme,
    required this.inActiveButtonTheme,
    required this.backgroundColor,
    required this.tabButtonTheme,
    required this.inputTheme,
    required this.checkBoxTheme,
    required this.hrefColor,
  });

  static AppTheme get theme {
    switch (brightness) {
      case Brightness.light:
        return lightTheme;
      default:
        return darkTheme;
    }
  }
}
