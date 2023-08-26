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
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      decoration: BoxDecoration(
        gradient: AppTheme.theme.backgroundColor,
        boxShadow: const [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 8,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: SafeArea(
        top: true,
        bottom: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const GoBackButton(),
                const SizedBox(width: 10),
                child,
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
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
      ),
    );
  }
}
