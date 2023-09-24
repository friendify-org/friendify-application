import 'dart:convert';

import 'package:application/data/api/user.dart';
import 'package:application/data/repository/config.dart';
import 'package:application/schema/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  UserSchema getUserProfile() {
    return exampleUser;
  }

  static Future<LoginResponse> login(LoginRequest body) async {
    http.Response rawResponse = await userApi.login(body);
    LoginResponse response =
        LoginResponse.fromJson(jsonDecode(rawResponse.body));
    if (rawResponse.statusCode == 400) {
      throw response.messages[0];
    }
    response.data.result =
        LoginResult.fromJson(jsonDecode(rawResponse.body)["data"]["result"]);
    Config data = await ConfigRepository.data;
    data.accessToken = response.data.result!.accessToken;
    ConfigRepository.update = data;
    await ConfigRepository.save();
    debugPrint("response is: ${response.data.result}");
    return response;
  }
}
