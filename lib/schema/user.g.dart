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

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) => LoginRequest(
      email: json['email'] as String? ?? "",
      password: json['password'] as String? ?? "",
    );

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

LoginResult _$LoginResultFromJson(Map<String, dynamic> json) => LoginResult(
      accessToken: json['access_token'] as String? ?? "",
    );

Map<String, dynamic> _$LoginResultToJson(LoginResult instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
    };

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      data: ResponseData<LoginResult>.fromJson(
          json['data'] as Map<String, dynamic>),
    )..messages = (json['messages'] as List<dynamic>)
        .map((e) => ResponseMessage.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'messages': instance.messages,
      'data': instance.data,
    };
