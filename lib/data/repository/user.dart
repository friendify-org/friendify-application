import 'package:application/data/api/user.dart';
import 'package:application/schema/user.dart';

class UserRepository {
  UserSchema getUserProfile() {
    return exampleUser;
  }

  static void login(LoginRequest data) async {
    await userApi.login(data);
  }
}
