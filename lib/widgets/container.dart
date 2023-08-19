import 'package:application/theme/main.dart';
import 'package:application/widgets/button.dart';
import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final Widget child;

  const AppContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(gradient: AppTheme.theme.backgroundColor),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: AppButtonTheme(
            buttonTheme: AppTheme.theme.primaryButtonTheme,
            child: child,
          ),
        ),
      ),
    );
  }
}
