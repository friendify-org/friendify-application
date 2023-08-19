import 'package:application/screens/auth/widgets/one_screen_layout.dart';
import 'package:application/screens/main.dart';
import 'package:application/theme/main.dart';
import 'package:application/utils/validator.dart';
import 'package:application/widgets/body.dart';
import 'package:application/widgets/button.dart';
import 'package:application/widgets/container.dart';
import 'package:application/widgets/form.dart';
import 'package:application/widgets/heading.dart';
import 'package:application/widgets/input.dart';
import 'package:flutter/material.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formController = FormController();
    return AppContainer(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const OneScreenLayout(),
          const SizedBox(height: 30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              H7(content: "Please check your email"),
            ],
          ),
          const SizedBox(height: 30),
          AppForm(formController: formController, children: [
            AppInput(
              label: const BodySmall(content: "Code"),
              hintText: const HintText(BodySmall(content: "Enter code")),
              controller: InputController(validators: [validOtpCode()]),
              field: "otp_code",
            ),
          ]),
          const SizedBox(height: 30),
          Row(
            children: [
              const BodySmall(content: "Didn’t receive code?"),
              const SizedBox(width: 5),
              BodyTheme(
                color: AppTheme.theme.hrefColor,
                child: const BodySmall(content: "Resend"),
              ),
            ],
          ),
          const SizedBox(height: 30),
          FractionallySizedBox(
            widthFactor: 1,
            child: SizedBox(
              height: 50,
              child: AppButton(
                onPressed: () {
                  if (formController.validate()) {
                    Navigator.of(context).pushNamed(RouteNames.resetPassword);
                  }
                },
                child: const H10(content: "CONFIRM"),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
