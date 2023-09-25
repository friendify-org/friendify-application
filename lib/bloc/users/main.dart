import 'package:application/bloc/users/event.dart';
import 'package:application/bloc/users/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc(super.initialState) {
    on<UpdateProfileEvent>(_updateProfile);
  }

  _updateProfile<UpdateProfileEvent>(event, emit) {
    state.profile = event.profile;
    emit(state);
  }
}
