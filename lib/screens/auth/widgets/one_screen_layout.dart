import 'package:application/theme/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OneScreenLayout extends StatelessWidget {
  const OneScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 70),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: AppTheme.theme.inputTheme.backgroundColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: SvgPicture.asset(
                    "assets/images/chevron_back.svg",
                    colorFilter: ColorFilter.mode(
                      AppTheme.theme.primaryTextColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Image.asset("assets/images/logo_full.png", width: 300),
        ],
      ),
    );
  }
}
