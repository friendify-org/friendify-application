// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageSchema _$MessageSchemaFromJson(Map<String, dynamic> json) =>
    MessageSchema(
      content: json['content'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      sender: UserSchema.fromJson(json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MessageSchemaToJson(MessageSchema instance) =>
    <String, dynamic>{
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'sender': instance.sender,
    };
