import 'package:application/bloc/messages/events.dart';
import 'package:application/bloc/messages/messages_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  MessagesBloc(super.initialState) {
    on<SendMessageEvent>(_sendMessageHandler);
  }

  _sendMessageHandler<SendMessageEvent>(event, emit) {
    state.addMessage = event.message;
    emit(state);
  }
}