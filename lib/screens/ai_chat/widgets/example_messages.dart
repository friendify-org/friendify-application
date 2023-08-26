import 'package:application/bloc/messages/events.dart';
import 'package:application/bloc/messages/main.dart';
import 'package:application/schema/message.dart';
import 'package:application/schema/user.dart';
import 'package:application/theme/main.dart';
import 'package:application/widgets/body.dart';
import 'package:application/widgets/heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final exampleMessages = [
  "Translate \"Today is a good day\" into French.",
  "What's your favorite way to relax after a long day?",
  "How to deal with a difficult boss?",
];

class ExampleMessages extends StatelessWidget {
  const ExampleMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            H11(
              content: "Examples",
              style: TextStyle(
                  color: AppTheme.theme.inputTheme.placeHolderColor,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
            ),
            ...exampleMessages.map(
              (message) => GestureDetector(
                onTap: () {
                  context.read<MessagesBloc>().add(
                        SendMessageEvent(
                          MessageSchema(
                              content: message,
                              createdAt: DateTime.now(),
                              updatedAt: DateTime.now(),
                              sender: exampleUser),
                        ),
                      );
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                    color: AppTheme.theme.ownerMessageTheme.backgroundColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: BodySmall(
                    content: message,
                    style: TextStyle(
                      color: AppTheme.theme.ownerMessageTheme.textColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Image.asset(
          "assets/images/robot_empty_ai_chat.png",
          height: 200,
        )
      ],
    );
  }
}
