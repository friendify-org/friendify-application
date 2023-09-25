import 'package:application/bloc/users/event.dart';
import 'package:application/bloc/users/main.dart';
import 'package:application/bloc/users/state.dart';
import 'package:application/data/repository/config.dart';
import 'package:application/data/repository/user.dart';
import 'package:application/schema/user.dart';
import 'package:application/screens/main.dart';
import 'package:application/screens/profile/widgets/basic_info.dart';
import 'package:application/theme/main.dart';
import 'package:application/widgets/header.dart';
import 'package:application/widgets/input.dart';
import 'package:application/widgets/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersBloc, UsersState>(
      builder: (context, state) {
        if (state.profile == null) {
          UserRepository.getProfile().then((response) {
            debugPrint("response is: ${response.data.result}");
            UpdateProfileEvent(profile: response.data.result);
          });
          return AppContainer(
            child: Container(),
          );
        }
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
                FakeInput(label: "Name", content: state.profile!.fullName),
                SizedBox(height: 16),
                FakeInput(label: "Email", content: state.profile!.email),
                SizedBox(height: 16),
                FakeInput(
                    label: "Date of Birth",
                    content: DateFormat("dd/MM/yyyy")
                        .format(state.profile!.dayOfBirth)),
                SizedBox(height: 16),
                FakeInput(
                    label: "Referral Code",
                    content: state.profile!.referralCode),
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
      },
    );
  }
}
