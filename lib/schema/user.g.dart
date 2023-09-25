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
      referralCode: json['referralCode'] as String,
      email: json['email'] as String,
      dayOfBirth: DateTime.parse(json['dayOfBirth'] as String),
    );

Map<String, dynamic> _$UserSchemaToJson(UserSchema instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'avatar': instance.avatar,
      'referralCode': instance.referralCode,
      'email': instance.email,
      'dayOfBirth': instance.dayOfBirth.toIso8601String(),
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

LoginResponseData _$LoginResponseDataFromJson(Map<String, dynamic> json) =>
    LoginResponseData(
      result: LoginResult.fromJson(json['result'] as Map<String, dynamic>),
    )
      ..total = json['total'] as int
      ..limit = json['limit'] as int
      ..offset = json['offset'] as int;

Map<String, dynamic> _$LoginResponseDataToJson(LoginResponseData instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'offset': instance.offset,
      'result': instance.result,
    };

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      data: LoginResponseData.fromJson(json['data'] as Map<String, dynamic>),
    )..messages = (json['messages'] as List<dynamic>)
        .map((e) => ResponseMessage.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'messages': instance.messages,
      'data': instance.data,
    };

GetProfileResponseData _$GetProfileResponseDataFromJson(
        Map<String, dynamic> json) =>
    GetProfileResponseData(
      result: UserSchema.fromJson(json['result'] as Map<String, dynamic>),
    )
      ..total = json['total'] as int
      ..limit = json['limit'] as int
      ..offset = json['offset'] as int;

Map<String, dynamic> _$GetProfileResponseDataToJson(
        GetProfileResponseData instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'offset': instance.offset,
      'result': instance.result,
    };

GetProfileResponse _$GetProfileResponseFromJson(Map<String, dynamic> json) =>
    GetProfileResponse(
      data:
          GetProfileResponseData.fromJson(json['data'] as Map<String, dynamic>),
    )..messages = (json['messages'] as List<dynamic>)
        .map((e) => ResponseMessage.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$GetProfileResponseToJson(GetProfileResponse instance) =>
    <String, dynamic>{
      'messages': instance.messages,
      'data': instance.data,
    };
