import 'package:application/theme/main.dart';
import 'package:application/widgets/diamond.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset("assets/images/menu_icon.png", width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo_horizontal.jpeg", height: 30,),
              const DiamondWidget(),
            ],
          ),
          SvgPicture.asset(
            "assets/images/notification.svg",
            colorFilter: ColorFilter.mode(
              AppTheme.theme.primaryTextColor,
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
    );
  }
}
