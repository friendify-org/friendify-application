import 'package:application/bloc/messages/main.dart';
import 'package:application/bloc/messages/messages_state.dart';
import 'package:application/screens/ai_chat/widgets/messages.dart';
import 'package:application/widgets/main.dart';
import 'package:application/widgets/secondary_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AiChat extends StatelessWidget {
  const AiChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MessagesBloc(MessagesState()),
        ),
      ],
      child: AppContainer(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height : MediaQuery.of(context).size.height,
          child: const Column(
            children: [
              SecondaryHeader(
                child: H8(content: "AI Chat"),
              ),
              Expanded(child: Messages())
            ],
          ),
        ),
      ),
    );
  }
}