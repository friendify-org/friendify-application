import 'package:application/theme/main.dart';
import 'package:application/widgets/button.dart';
import 'package:application/widgets/diamond.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppHeader extends StatelessWidget {
  final Widget rightButton;
  final Widget leftButton;
  final Widget title;

  const AppHeader({
    super.key,
    this.rightButton = const NotificationButton(),
    this.leftButton = const MenuButton(),
    this.title = const Logo(),
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            leftButton,
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                title,
                SizedBox(height: 5),
                const DiamondWidget(),
              ],
            ),
            rightButton
          ],
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/logo_horizontal.jpeg",
      height: 30,
    );
  }
}
