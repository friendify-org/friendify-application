import 'dart:convert';
import 'package:application/data/repository/config.dart';
import 'package:application/schema/config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

export 'user.dart';

typedef Query = Map<String, dynamic>;
typedef Params = Map<String, String>;
typedef Body = Map<String, dynamic>;

class ApiCaller {
  String baseUrl;
  ApiCaller({this.baseUrl = ""});

  String _decodePathWithParams(String path, Params params) {
    return "";
  }

  Future<http.Response> get(String path, Query query, Params params) async {
    Uri uri = Uri.parse(baseUrl + _decodePathWithParams(path, params));
    uri.replace(queryParameters: query);
    debugPrint("uri is: ${uri.toString()}");

    final config = await ConfigRepository.data;

    return http.get(
      uri,
      headers: {
        "Authorization": "Bearer ${config.accessToken}",
      },
    );
  }

  Future<http.Response> post({String path = "", Body body = const {}, Params params = const {}}) async {
    Uri uri = Uri.parse(baseUrl + _decodePathWithParams(path, params));

    final config = await ConfigRepository.data;
    debugPrint("uri is: ${uri.toString()}");

    return http.post(
      uri,
      headers: {
        "Authorization": "Bearer ${config.accessToken}",
      },
      body: jsonEncode(body),
    );
  }

  Future<http.Response> put(String path, Body body, Params params) async {
    Uri uri = Uri.parse(baseUrl + _decodePathWithParams(path, params));

    final config = await ConfigRepository.data;

    return http.put(
      uri,
      headers: {
        "Authorization": "Bearer ${config.accessToken}",
      },
      body: jsonEncode(body),
    );
  }

  Future<http.Response> delete(String path, Query query, Params params) async {
    Uri uri = Uri.parse(baseUrl + _decodePathWithParams(path, params));
    uri.replace(queryParameters: query);

    final config = await ConfigRepository.data;

    return http.delete(
      uri,
      headers: {
        "Authorization": "Bearer ${config.accessToken}",
      },
    );
  }
}
