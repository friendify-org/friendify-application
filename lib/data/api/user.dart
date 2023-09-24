import 'package:application/data/api/main.dart';
import 'package:application/schema/main.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class UserApi extends ApiCaller {
  UserApi() {
    baseUrl = "${dotenv.env["API_URL"] ?? ""}/users";
  }

  Future<http.Response> login(LoginRequest data) async {
    http.Response response = await post(path: "/login", body: data.toJson());
    return response;
  }
}

final userApi = UserApi();
