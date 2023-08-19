import 'package:application/screens/ask/main.dart';
import 'package:application/screens/auth/forgot_password.dart';
import 'package:application/screens/auth/main.dart';
import 'package:application/screens/auth/reset_password.dart';
import 'package:application/screens/auth/verify_code.dart';
import 'package:application/screens/wellcome/main.dart';
import 'package:flutter/material.dart';

class RouteNames {
  static const splash = "/";
  static const auth = "auth";
  static const forgotPassword = "auth/forgot_password";
  static const confirm = "auth/confirm";
  static const resetPassword = "auth/reset_password";
  static const ask = "ask";
}

final Map<String, Widget Function(BuildContext context)> routes = {
  // RouteNames.splash: (BuildContext context) => const Wellcome(),
  RouteNames.auth: (BuildContext context) => const AuthScreen(),
  RouteNames.forgotPassword: (BuildContext context) =>
      const ForgotPasswordScreen(),
  RouteNames.confirm: (_) => const VerifyCodeScreen(),
  RouteNames.resetPassword: (_) => const ResetPasswordScreen(),
  RouteNames.ask: (_) => const AskScreen(),
};
