import 'package:application/schema/main.dart';
import 'package:json_annotation/json_annotation.dart';

part "response.g.dart";

@JsonSerializable(explicitToJson: true)
class ResponseMessage {
  int code;
  String description;
  String field;
  @JsonKey(name: "meta_data")
  Map<String, String> metaData;

  ResponseMessage(
      {this.code = 0,
      this.description = "",
      this.field = "",
      this.metaData = const {}});

  factory ResponseMessage.fromJson(Map<String, dynamic> json) =>
      _$ResponseMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseMessageToJson(this);
}

class ResponseData {
  int total;
  int limit;
  int offset;

  ResponseData(
      {this.total = 0, this.limit = 0, this.offset = 0});
}

class Response {
  List<ResponseMessage> messages;

  Response({this.messages = const []});
}
