import 'package:json_annotation/json_annotation.dart';

part 'history.g.dart';

@JsonSerializable()
class History {
  String id;
  String question;
  String answer;
  DateTime createdAt;

  History({
    required this.id,
    required this.question,
    required this.answer,
    required this.createdAt
  });

  factory History.fromJson(Map<String, dynamic> json) => _$HistoryFromJson(json);

  Map<String, dynamic> toJson() => _$HistoryToJson(this);
}