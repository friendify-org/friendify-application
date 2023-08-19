import 'package:application/theme/main.dart';
import 'package:application/widgets/body.dart';
import 'package:flutter/material.dart';

class Remember extends StatefulWidget {
  const Remember({super.key});

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          fillColor: MaterialStateProperty.resolveWith(
              (states) => AppTheme.theme.checkBoxTheme.fillColor),
          value: value,
          onChanged: (value) {
            setState(() {
              this.value = value ?? false;
            });
          },
        ),
        BodyTheme(
          color: AppTheme.theme.checkBoxTheme.textColor,
          child: const BodySmall(content: "Remember me"),
        )
      ],
    );
  }
}
