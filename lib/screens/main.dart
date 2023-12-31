import 'package:application/screens/ai_chat/main.dart';
import 'package:application/screens/auth/forgot_password.dart';
import 'package:application/screens/auth/main.dart';
import 'package:application/screens/auth/reset_password.dart';
import 'package:application/screens/auth/verify_code.dart';
import 'package:application/screens/histories/main.dart';
import 'package:application/screens/home/main.dart';
import 'package:application/screens/profile/main.dart';
import 'package:application/screens/wellcome/main.dart';
import 'package:flutter/material.dart';

class RouteNames {
  static const splash = "/";
  static const auth = "auth";
  static const forgotPassword = "auth/forgot_password";
  static const confirm = "auth/confirm";
  static const resetPassword = "auth/reset_password";
  static const home = "home";
  static const ask = "ask";
  static const chat = "chat";
  static const histories = "histories";
  static const aiChat = "ai_chat";
  static const profile = "profile";
}

final Map<String, Widget> routes = {
  RouteNames.splash: const Wellcome(),
  RouteNames.auth: const AuthScreen(),
  RouteNames.forgotPassword: const ForgotPasswordScreen(),
  RouteNames.confirm: const VerifyCodeScreen(),
  RouteNames.resetPassword: const ResetPasswordScreen(),
  RouteNames.home: const HomeScreen(),
  RouteNames.histories: const HistoriesScreen(),
  RouteNames.aiChat: const AiChat(),
  RouteNames.profile: const ProfileScreen(),
};

Map<String, Widget Function(BuildContext)> routeBuilder() {
  Map<String, Widget Function(BuildContext)> result = {};

  routes.forEach((routeName, widget) {
    result[routeName] = (BuildContext context) => widget;
  });

  return result;
}
