import 'package:application/data/repository/user.dart';
import 'package:application/schema/main.dart';
import 'package:application/screens/auth/widgets/apple_button.dart';
import 'package:application/screens/auth/widgets/google_button.dart';
import 'package:application/screens/auth/widgets/line.dart';
import 'package:application/screens/auth/widgets/remember.dart';
import 'package:application/screens/main.dart';
import 'package:application/theme/main.dart';
import 'package:application/utils/messages.dart';
import 'package:application/utils/validator.dart';
import 'package:application/widgets/body.dart';
import 'package:application/widgets/button.dart';
import 'package:application/widgets/form.dart';
import 'package:application/widgets/heading.dart';
import 'package:application/widgets/input.dart';
import 'package:flutter/material.dart';

class LoginTab extends StatefulWidget {
  const LoginTab({super.key});

  @override
  State<LoginTab> createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  FormController formController = FormController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppForm(
          formController: formController,
          children: [
            AppInput(
              field: "email",
              label: const BodySmall(content: "Email address"),
              hintText: const HintText(
                BodyNormal(
                  content: "Email",
                ),
              ),
              controller: InputController(validators: [isEmailAddress()]),
            ),
            AppInput(
              field: "password",
              label: const BodySmall(content: "Password"),
              hintText: const HintText(BodyNormal(content: "Password")),
              controller: InputController(validators: [validPassword()]),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Remember(),
            BodyTheme(
              color: AppTheme.theme.hrefColor,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(RouteNames.forgotPassword);
                },
                child: const BodySmall(content: "Forgot password? "),
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        AppButtonTheme(
          buttonTheme: AppTheme.theme.primaryButtonTheme,
          child: SizedBox(
            height: 45,
            child: AppButton(
              onPressed: () {
                if (formController.validate()) {
                  UserRepository.login(
                    LoginRequest.fromJson(formController.json),
                  ).then((_) {
                    Navigator.of(context).pushNamed(RouteNames.home);
                  }).catchError((error) {
                    formController.throwGlobalError(messageBuilder(error));
                  });
                }
              },
              child: const H10(content: "LOGIN"),
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Line(),
        const SizedBox(height: 20),
        const GoogleButton(),
        const SizedBox(height: 10),
        const AppleButton()
      ],
    );
  }
}
