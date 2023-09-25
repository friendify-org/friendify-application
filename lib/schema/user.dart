import 'package:application/schema/main.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class UserSchema {
  int id;
  String fullName;
  String phoneNumber;
  String avatar;
  String referralCode;
  String email;
  DateTime dayOfBirth;

  UserSchema(
      {required this.id,
      required this.fullName,
      required this.phoneNumber,
      required this.avatar,
      required this.referralCode,
      required this.email,
      required this.dayOfBirth});

  factory UserSchema.fromJson(Map<String, dynamic> json) =>
      _$UserSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$UserSchemaToJson(this);
}

final exampleUser = UserSchema(
  id: 1,
  fullName: "Floyd Miles",
  phoneNumber: "+84 94855161122",
  avatar:
      "https://friendify-bucket.s3.ap-southeast-1.amazonaws.com/files/15.png",
  referralCode: "aasdf",
  email: "Miles@gmail.com",
  dayOfBirth: DateTime.now(),
);

@JsonSerializable()
class LoginRequest {
  String email;
  String password;

  LoginRequest({this.email = "", this.password = ""});

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}

@JsonSerializable()
class LoginResult {
  @JsonKey(name: "access_token")
  String accessToken;

  LoginResult({this.accessToken = ""});

  factory LoginResult.fromJson(Map<String, dynamic> json) =>
      _$LoginResultFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResultToJson(this);
}

@JsonSerializable()
class LoginResponseData extends ResponseData {
  LoginResult result;

  LoginResponseData({required this.result});

  factory LoginResponseData.fromJson(Json json) =>
      _$LoginResponseDataFromJson(json);
}

@JsonSerializable()
class LoginResponse extends Response {
  LoginResponseData data;

  LoginResponse({
    required this.data,
  });

  factory LoginResponse.fromJson(Json json) => _$LoginResponseFromJson(json);
}

@JsonSerializable()
class GetProfileResponseData extends ResponseData {
  UserSchema result;

  GetProfileResponseData({required this.result});

  factory GetProfileResponseData.fromJson(Json json) => _$GetProfileResponseDataFromJson(json);
}

@JsonSerializable()
class GetProfileResponse extends Response {
  GetProfileResponseData data;

  GetProfileResponse({required this.data});

  factory GetProfileResponse.fromJson(Json json) =>
      _$GetProfileResponseFromJson(json);
}
