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

@JsonSerializable(explicitToJson: true)
class ResponseData<T> {
  int total;
  int limit;
  int offset;

  @JsonKey(includeFromJson: false, includeToJson: false)
  T? result;

  ResponseData({
    this.total = 0,
    this.limit = 0,
    this.offset = 0,
    this.result,
  });

  factory ResponseData.fromJson(Json json) => _$ResponseDataFromJson(json);

  Json toJson() => _$ResponseDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Response<T> {
  List<ResponseMessage> messages;
  ResponseData<T> data;

  Response({this.messages = const [], required this.data});

  factory Response.fromJson(Json json) => _$ResponseFromJson(json);
  Json toJson() => _$ResponseToJson(this);
}
