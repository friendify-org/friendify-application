import 'package:application/theme/main.dart';
import 'package:application/widgets/button.dart';
import 'package:application/widgets/heading.dart';
import 'package:flutter/material.dart';

class AppleButton extends StatelessWidget {
  const AppleButton({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppButtonTheme(
        buttonTheme: AppTheme.theme.secondaryButtonTheme,
        child: SizedBox(
          height: 50,
          child: AppButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/apple.png", width: 16),
                SizedBox(width: 10),
                Text(
                  "Continue with Apple",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.theme.secondaryButtonTheme.textColor,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
