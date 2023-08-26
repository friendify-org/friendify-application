import 'package:application/schema/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

typedef MessagesSchema = List<MessageSchema>;

@JsonSerializable()
class MessageSchema {
  String content;
  DateTime createdAt;
  DateTime updatedAt;
  UserSchema sender;
  late bool firstInBlock = false;
  late bool lastInBlock = false;

  MessageSchema({
    required this.content,
    required this.createdAt,
    required this.updatedAt,
    required this.sender,
  });

  factory MessageSchema.fromJson(Map<String, dynamic> json) =>
      _$MessageSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$MessageSchemaToJson(this);

  bool sameSender(MessageSchema message) {
    return sender.id == message.sender.id;
  }

  bool sameTime(MessageSchema message) {
    // ! Hard code, need change latter
    return createdAt.difference(message.createdAt).inMinutes <= 5;
  }

  @override
  String toString() {
    // TODO: implement toString
    return toJson().toString();
  }
}

final exampleUserMessage = MessageSchema(
    content: "What's the meaning of life?",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    sender: exampleUser);

final exampleUserMessage2 = MessageSchema(
    content: "A Nhon Se yo",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    sender: exampleUser);
