import 'package:application/data/api/main.dart';
import 'package:application/schema/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';

class UserApi extends ApiCaller {
  UserApi() {
    baseUrl = "${dotenv.env["API_URL"] ?? ""}/users";
  }

  Future<void> login(LoginRequest data) async {
    Response response = await this.post(path: "/login");
    debugPrint("data is: ${response.body}");
  }
}

final userApi = UserApi();
