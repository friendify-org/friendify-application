import 'package:application/schema/main.dart';

sealed class UsersEvent {}

class UpdateProfileEvent extends UsersEvent {
  UserSchema profile;
  UpdateProfileEvent({required this.profile});
}
