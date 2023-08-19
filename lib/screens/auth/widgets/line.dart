import 'package:application/theme/main.dart';
import 'package:application/widgets/body.dart';
import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Container(
              height: 1, color: AppTheme.theme.checkBoxTheme.fillColor),
        ),
        SizedBox(width: 10),
        Center(
          child: const Overline(content: "Or"),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 1,
          child: Container(
              height: 1, color: AppTheme.theme.checkBoxTheme.fillColor),
        ),
      ],
    );
  }
}
