import 'package:application/data/repository/config.dart';
import 'package:application/schema/user.dart';
import 'package:application/screens/main.dart';
import 'package:application/screens/profile/widgets/basic_info.dart';
import 'package:application/theme/main.dart';
import 'package:application/widgets/button.dart';
import 'package:application/widgets/container.dart';
import 'package:application/widgets/header.dart';
import 'package:application/widgets/heading.dart';
import 'package:application/widgets/input.dart';
import 'package:application/widgets/main.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      header: const AppHeader(
        leftButton: GoBackButton(),
        title: H8(content: "Profile"),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            BasicInformation(data: exampleUser),
            SizedBox(height: 16),
            FakeInput(label: "Name", content: exampleUser.fullName),
            SizedBox(height: 16),
            FakeInput(label: "Email", content: exampleUser.email),
            SizedBox(height: 16),
            FakeInput(
                label: "Date of Birth",
                content:
                    DateFormat("dd/MM/yyyy").format(exampleUser.dayOfBirth)),
            SizedBox(height: 16),
            FakeInput(
                label: "Referral Code", content: exampleUser.referralCode),
            SizedBox(height: 16),
            SizedBox(
              height: 40,
              child: AppButton(
                onPressed: () {},
                child: const H10(
                  content: "Change Password",
                ),
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              height: 40,
              child: AppButtonTheme(
                buttonTheme: AppTheme.theme.secondaryButtonTheme,
                child: AppButton(
                  onPressed: () async {
                    final data = await ConfigRepository.data;
                    data.accessToken = "";
                    ConfigRepository.update = data;
                    await ConfigRepository.save();
                    Navigator.of(context).pushNamed(RouteNames.auth);
                  },
                  child: const H10(
                    content: "Logout",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
