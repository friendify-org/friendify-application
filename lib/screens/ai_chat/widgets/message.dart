import 'package:application/schema/message.dart';
import 'package:application/schema/user.dart';
import 'package:application/theme/main.dart';
import 'package:application/widgets/body.dart';
import 'package:flutter/material.dart';

const _normalBorderRadius = 16.0;

class Message extends StatelessWidget {
  final MessageSchema data;

  const Message({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    if (data.sender.id == exampleUser.id) return _ownerMessage(context);
    return _otherMessage(context);
  }

  Widget _ownerMessage(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: const EdgeInsets.only(top: 5, right: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppTheme.theme.ownerMessageTheme.backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(_normalBorderRadius),
            topRight: data.firstInBlock
                ? const Radius.circular(_normalBorderRadius)
                : const Radius.circular(0),
            bottomLeft: const Radius.circular(_normalBorderRadius),
            bottomRight: data.lastInBlock
                ? const Radius.circular(_normalBorderRadius)
                : const Radius.circular(0),
          ),
        ),
        child: BodyNormal(
          content: data.content,
        ),
      ),
    );
  }

  Widget _otherMessage(BuildContext context) {
    return const Placeholder();
  }
}
