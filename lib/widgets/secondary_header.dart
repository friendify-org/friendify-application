import 'package:application/theme/main.dart';
import 'package:application/widgets/button.dart';
import 'package:application/widgets/heading.dart';
import 'package:application/widgets/svg.dart';
import 'package:flutter/material.dart';

class SecondaryHeader extends StatelessWidget {
  final Widget child;
  const SecondaryHeader({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const GoBackButton(),
              SizedBox(width: 10),
              child,
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            decoration: BoxDecoration(
              gradient: AppTheme.theme.primaryButtonTheme.backgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/diamond.png",
                  width: 30,
                ),
                const SizedBox(width: 10),
                HeadingTheme(
                  color: AppTheme.theme.primaryButtonTheme.textColor,
                  child: const H10(content: "23456"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
