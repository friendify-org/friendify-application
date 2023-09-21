import 'package:application/data/repository/config.dart';
import 'package:application/schema/config.dart';
import 'package:http/http.dart' as http;

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

    final config = await ConfigRepository.data;

    return http.get(
      uri,
      headers: {
        "Authorization": "Bearer ${config.accessToken}",
      },
    );
  }

  Future<http.Response> post(String path, Body body, Params params) async {
    Uri uri = Uri.parse(baseUrl + _decodePathWithParams(path, params));

    final config = await ConfigRepository.data;

    return http.post(uri, headers: {
      "Authorization": "Bearer ${config.accessToken}",
    });
  }
}
