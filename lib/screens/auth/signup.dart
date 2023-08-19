import 'package:application/utils/validator.dart';
import 'package:application/widgets/body.dart';
import 'package:application/widgets/button.dart';
import 'package:application/widgets/form.dart';
import 'package:application/widgets/heading.dart';
import 'package:application/widgets/input.dart';
import 'package:flutter/material.dart';

class SignupTab extends StatelessWidget {
  const SignupTab({super.key});

  @override
  Widget build(BuildContext context) {
    final formController = FormController();
    return Column(
      children: [
        AppForm(
          formController: formController,
          children: [
            AppInput(
              label: const BodySmall(content: "Full name"),
              hintText: const HintText(BodyNormal(content: "Fullname")),
              controller: InputController(),
              field: "fullname",
            ),
            AppInput(
              label: const BodySmall(content: "Email address"),
              hintText: const HintText(BodyNormal(content: "Email")),
              controller: InputController(validators: [isEmailAddress()]),
              field: "email",
            ),
            AppInput(
              label: const BodySmall(content: "Password"),
              hintText: const HintText(BodyNormal(content: "Password")),
              controller: InputController(validators: [validPassword()]),
              field: "password",
            ),
            AppInput(
              label: const BodySmall(content: "Confirm"),
              hintText: const HintText(BodyNormal(content: "Confirm password")),
              controller: InputController(),
              field: "",
            ),
            AppInput(
              label: const BodySmall(content: "Invite code *"),
              hintText: const HintText(BodyNormal(content: "Invite Code")),
              controller: InputController(),
              field: "refferal_code",
            ),
          ],
        ),
        SizedBox(height: 30),
        SizedBox(
          height: 40,
          child: AppButton(
            onPressed: () {
              formController.validate();
            },
            child: const H10(content: "SIGN UP"),
          ),
        )
      ],
    );
  }
}
