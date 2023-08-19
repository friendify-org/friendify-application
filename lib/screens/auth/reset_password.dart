import 'package:application/screens/auth/widgets/one_screen_layout.dart';
import 'package:application/screens/main.dart';
import 'package:application/theme/main.dart';
import 'package:application/utils/validator.dart';
import 'package:application/widgets/body.dart';
import 'package:application/widgets/button.dart';
import 'package:application/widgets/container.dart';
import 'package:application/widgets/dialog.dart';
import 'package:application/widgets/form.dart';
import 'package:application/widgets/heading.dart';
import 'package:application/widgets/input.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
            const H7(content: "Reset Password"),
            const SizedBox(height: 30),
            AppForm(formController: formController, children: [
              AppInput(
                label: const BodySmall(content: "New Password"),
                hintText: const HintText(BodyNormal(content: "Password")),
                controller: InputController(validators: [validPassword()]),
                field: "password",
              ),
              AppInput(
                label: const BodySmall(content: "Confirm Password"),
                hintText:
                    const HintText(BodyNormal(content: "Confirm password")),
                controller: InputController(validators: [validPassword()]),
                field: "_",
              ),
            ]),
            FractionallySizedBox(
              widthFactor: 1,
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                height: 50,
                child: AppButton(
                  onPressed: () {
                    if (formController.validate()) {
                      AppDialog(
                        shadowLevel: 0,
                        onRequestClose: () {
                          // Navigator.of(context).pop();
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppTheme.theme.primaryTextColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "Updating...",
                            style: BodyNormal.style.copyWith(
                              color:
                                  AppTheme.theme.primaryButtonTheme.textColor,
                            ),
                          ),
                        ),
                      ).show(context);
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
