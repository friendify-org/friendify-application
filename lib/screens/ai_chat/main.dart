import 'package:application/bloc/messages/main.dart';
import 'package:application/bloc/messages/messages_state.dart';
import 'package:application/screens/ai_chat/widgets/messages.dart';
import 'package:application/widgets/chat_footer.dart';
import 'package:application/widgets/main.dart';
import 'package:application/widgets/secondary_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AiChat extends StatelessWidget {
  const AiChat({super.key});

  @override
  Widget build(BuildContext context) {
    final headerKey = GlobalKey();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MessagesBloc(MessagesState()),
        ),
      ],
      child: AppContainer(
        header: SecondaryHeader(
          child: H8(content: "AI Chat", key: headerKey,),
        ),
        child: const Column(
          children: [
            Expanded(child: Messages()),
            Align(
              alignment: Alignment.bottomCenter,
              child: ChatFooter(),
            )
          ],
        ),
      ),
    );
  }
}
