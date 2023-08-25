import 'package:application/schema/message.dart';

class MessagesState{

  List<MessageSchema> messages = [];

  MessagesState({this.messages = const []});

  set addMessage(MessageSchema message) {
    messages.add(message);
  }
}
