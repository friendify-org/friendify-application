import 'package:application/schema/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable()
class MessageSchema {
  String content;
  DateTime createdAt;
  DateTime updatedAt;
  UserSchema sender;

  MessageSchema({
    required this.content,
    required this.createdAt,
    required this.updatedAt,
    required this.sender,
  });


  factory MessageSchema.fromJson(Map<String, dynamic> json)  => _$MessageSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$MessageSchemaToJson(this);
}

final exampleUserMessage = MessageSchema(content: "What's the meaning of life?", createdAt: DateTime.now(), updatedAt: DateTime.now(), sender: exampleUser);