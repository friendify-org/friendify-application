import 'package:application/screens/auth/login.dart';
import 'package:application/screens/auth/signup.dart';
import 'package:application/widgets/main.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TabButtonController tabController = TabButtonController(
    options: const [
      TabButtonOption(
        label: H10(content: "Login"),
        value: "login",
      ),
      TabButtonOption(
        label: H10(content: "Sign Up"),
        value: "signup",
      ),
    ],
  );

  void _addListener() {
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    _addListener();
    return AppContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SafeArea(
            child: Container(),
            top: true,
            bottom: false,
          ),
          Image.asset('assets/images/logo_full.png', width: 250),
          const SizedBox(height: 30),
          FractionallySizedBox(
            widthFactor: 0.8,
            child: Column(
              children: [
                TabButton(
                  controller: tabController,
                ),
                const SizedBox(height: 30),
                tabController.value.value == "login"
                    ? const LoginTab()
                    : const SignupTab()
              ],
            ),
          )
        ],
      ),
    );
  }
}
