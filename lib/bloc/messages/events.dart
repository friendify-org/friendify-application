import 'package:application/schema/message.dart';

sealed class MessagesEvent {}

class SendMessageEvent extends MessagesEvent {
  MessageSchema message;
  SendMessageEvent(this.message);
}
