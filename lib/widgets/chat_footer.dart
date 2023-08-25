import 'package:application/theme/main.dart';
import 'package:application/widgets/heading.dart';
import 'package:application/widgets/svg.dart';
import 'package:flutter/material.dart';

class ChatFooter extends StatelessWidget {
  const ChatFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      left: false,
      right: false,
      bottom: true,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          gradient: AppTheme.theme.backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgWidget(
              asset: "assets/images/setting.svg",
              color: AppTheme.theme.chatFooterTheme.secondaryButtonTheme
                  .backgroundColor.colors[0],
            ),
            const SizedBox(
              width: 10,
            ),
            const Expanded(child: ChatFooterInput()),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: AppTheme
                    .theme.chatFooterTheme.primaryButtonTheme.backgroundColor,
              ),
              child: const SvgWidget(asset: "assets/images/micro.svg"),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatFooterInput extends StatelessWidget {
  const ChatFooterInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: AppTheme.theme.chatFooterTheme.inputTheme.backgroundColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                style: H11.textStyle.copyWith(
                    color: AppTheme
                        .theme.chatFooterTheme.inputTheme.primaryTextColor,
                    fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  border: InputBorder.none,
                  hintText: "Aa...",
                  hintStyle: H11.textStyle.copyWith(color: AppTheme.theme.chatFooterTheme.inputTheme.placeHolderColor, fontWeight: FontWeight.w400)
                ),
              ),
            ),
            const SvgWidget(asset: "assets/images/send.svg"),
          ],
        ));
  }
}
