import 'package:application/schema/main.dart';
import 'package:application/screens/wellcome/dynamic.dart';
import 'package:json_annotation/json_annotation.dart';

part "response.g.dart";

@JsonSerializable()
class Message {
  int code;
  String description;
  String field;
  @JsonKey(name: "meta_data")
  Map<String, String> metaData;

  Message(
      {this.code = 0,
      this.description = "",
      this.field = "",
      this.metaData = const {}});

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
