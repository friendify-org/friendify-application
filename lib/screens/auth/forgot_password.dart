import 'package:application/screens/auth/widgets/one_screen_layout.dart';
import 'package:application/screens/main.dart';
import 'package:application/utils/validator.dart';
import 'package:application/widgets/body.dart';
import 'package:application/widgets/button.dart';
import 'package:application/widgets/container.dart';
import 'package:application/widgets/form.dart';
import 'package:application/widgets/heading.dart';
import 'package:application/widgets/input.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formController = FormController();
    return AppContainer(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const OneScreenLayout(),
            const SizedBox(
              height: 30,
            ),
            const H7(content: "Forgot Password?"),
            const SizedBox(height: 30),
            AppForm(formController: formController, children: [
              AppInput(
                label: const BodySmall(content: "Email address"),
                hintText: const HintText(BodyNormal(content: "Email")),
                controller: InputController(validators: [isEmailAddress()]),
                field: "email",
              )
            ]),
            FractionallySizedBox(
              widthFactor: 1,
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                height: 50,
                child: AppButton(
                  onPressed: () {
                    if (formController.validate()) {
                      Navigator.of(context).pushNamed(RouteNames.confirm);
                    }
                  },
                  child: const H10(content: "CONFIRM"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
