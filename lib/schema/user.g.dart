// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSchema _$UserSchemaFromJson(Map<String, dynamic> json) => UserSchema(
      id: json['id'] as int,
      fullName: json['fullName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$UserSchemaToJson(UserSchema instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'avatar': instance.avatar,
    };
