// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Config _$ConfigFromJson(Map<String, dynamic> json) => Config(
      firstAccess: json['firstAccess'] as bool? ?? true,
      accessToken: json['accessToken'] as String? ?? "",
    );

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'firstAccess': instance.firstAccess,
      'accessToken': instance.accessToken,
    };
