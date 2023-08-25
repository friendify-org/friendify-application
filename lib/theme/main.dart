import 'package:application/theme/default_dark.dart';
import 'package:application/theme/default_light.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

@immutable
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

@immutable
class NavbarTheme {
  final material.Color backgroundColor;
  final material.Color itemColor;
  final material.Color activeItemColor;

  const NavbarTheme({
    required this.backgroundColor,
    required this.itemColor,
    required this.activeItemColor,
  });
}

var brightness = SchedulerBinding.instance.window.platformBrightness;

@immutable
class MessageTheme {
  final material.Color backgroundColor;
  final material.Color textColor;

  const MessageTheme({required this.backgroundColor, required this.textColor});
}

@immutable
class ChatFooterTheme {
  final InputTheme inputTheme;
  final ButtonTheme primaryButtonTheme;
  final ButtonTheme secondaryButtonTheme;

  const ChatFooterTheme({
    required this.inputTheme,
    required this.primaryButtonTheme,
    required this.secondaryButtonTheme,
  });
}

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
  final NavbarTheme navbarTheme;
  final material.Color alert;
  final MessageTheme ownerMessageTheme;
  final ChatFooterTheme chatFooterTheme;

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
    required this.navbarTheme,
    required this.alert,
    required this.ownerMessageTheme,
    required this.chatFooterTheme,
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
