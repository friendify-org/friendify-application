import 'package:application/theme/main.dart';
import 'package:application/widgets/heading.dart';
import 'package:application/widgets/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavigateButton extends StatelessWidget {
  final String asset;
  final String title;
  final String content;
  final String url;

  const NavigateButton(
      {super.key,
      required this.asset,
      required this.title,
      required this.content,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: AppTheme.theme.backgroundColor,
        boxShadow: const [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 15,
            offset: Offset(2, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SvgPicture.asset(asset),
        H11(content: title),
        SizedBox(height: 10),
        BodyTheme(
          color: AppTheme.theme.hrefColor,
          child: Row(
            children: [
              BodySmall(content: content),
              SizedBox(width: 30),
              SvgPicture.asset("assets/images/chevron-right.svg")
            ],
          ),
        ),
      ]),
    );
  }
}
