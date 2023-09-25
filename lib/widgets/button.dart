import 'package:application/screens/main.dart';
import 'package:application/theme/main.dart' as t;
import 'package:application/widgets/heading.dart';
import 'package:application/widgets/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class AppButtonTheme extends InheritedWidget {
  final t.ButtonTheme buttonTheme;

  const AppButtonTheme(
      {super.key, required this.buttonTheme, required super.child});

  static AppButtonTheme of(BuildContext context) {
    final AppButtonTheme? appButtonTheme =
        context.dependOnInheritedWidgetOfExactType<AppButtonTheme>();
    assert(appButtonTheme != null, "Cannot detect button theme");
    return appButtonTheme!;
  }

  @override
  bool updateShouldNotify(AppButtonTheme oldWidget) =>
      buttonTheme != oldWidget.buttonTheme;
}

class AppButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;

  const AppButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final buttonTheme = AppButtonTheme.of(context).buttonTheme;

    return Container(
      decoration: BoxDecoration(
        gradient: buttonTheme.backgroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0.0,
          ),
          child: HeadingTheme(
            color: buttonTheme.textColor,
            child: child,
          ),
        ),
      ),
    );
  }
}

class GoBackButton extends StatelessWidget {
  const GoBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: SvgWidget(
        asset: "assets/images/chevron_back.svg",
        color: t.AppTheme.theme.primaryTextColor,
        width: 24,
        height: 24,
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(RouteNames.profile);
      },
      child: Image.asset("assets/images/menu_icon.png", width: 30),
    );
  }
}

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/images/notification.svg",
      colorFilter: ColorFilter.mode(
        t.AppTheme.theme.primaryTextColor,
        BlendMode.srcIn,
      ),
    );
  }
}
