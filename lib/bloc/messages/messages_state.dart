import 'package:application/schema/message.dart';

class MessagesState {
  MessagesSchema _messages = [];

  MessagesState({List<MessageSchema>? messages}) {
    this.messages = messages ?? [exampleUserMessage, exampleUserMessage2];
  }

  set addMessage(MessageSchema message) {
    messages.add(message);
  }

  set messages(List<MessageSchema> messages) {
    _messages = [];
    messages.asMap().forEach((key, value) {
      value.firstInBlock = false;
      value.lastInBlock = false;
      _messages.add(value);
      if (key == 0 ||
          !value.sameSender(messages[key - 1]) ||
          !value.sameTime(messages[key - 1])) {
        _messages[key].firstInBlock = true;
      }
      if (key == messages.length - 1 ||
          !value.sameSender(messages[key + 1]) ||
          !value.sameTime(messages[key + 1])) {
        _messages[key].lastInBlock = true;
      }
    });
  }

  MessagesSchema get messages {
    return _messages;
  }
}
