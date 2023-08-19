import 'package:application/theme/main.dart';
import 'package:application/widgets/heading.dart';
import 'package:flutter/material.dart';

class DiamondWidget extends StatelessWidget {
  const DiamondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        gradient: AppTheme.theme.primaryButtonTheme.backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HeadingTheme(
            color: AppTheme.theme.primaryButtonTheme.textColor,
            child: const H11(content: "12345"),
            ),
          Image.asset("assets/images/diamond.png", width: 20)
        ],
      ),
    );
  }
}
