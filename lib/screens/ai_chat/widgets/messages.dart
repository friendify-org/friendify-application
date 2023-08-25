import 'package:application/bloc/messages/main.dart';
import 'package:application/bloc/messages/messages_state.dart';
import 'package:application/screens/ai_chat/widgets/example_messages.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessagesBloc, MessagesState>(
      builder: (context, state) {
        if(state.messages.isEmpty) {
          return const ExampleMessages();
        }
        return const Text("Have data");
      },
    );
  }
}