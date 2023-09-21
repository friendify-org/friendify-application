import 'package:json_annotation/json_annotation.dart';

part "config.g.dart";

@JsonSerializable()
class Config {
  bool firstAccess;
  String accessToken;

  Config({this.firstAccess = true, this.accessToken = ""});

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);

  Map<String, dynamic> toJson() => _$ConfigToJson(this);
}
