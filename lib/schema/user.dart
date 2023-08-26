import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class UserSchema {
  int id;
  String fullName;
  String phoneNumber;
  String avatar;

  UserSchema({
    required this.id,
    required this.fullName,
    required this.phoneNumber,
    required this.avatar,
  });

  factory UserSchema.fromJson(Map<String, dynamic> json) =>
      _$UserSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$UserSchemaToJson(this);
}


final exampleUser = UserSchema(id: 1, fullName: "Floyd Miles", phoneNumber: "+84 94855161122", avatar: "https://friendify-bucket.s3.ap-southeast-1.amazonaws.com/files/15.png");