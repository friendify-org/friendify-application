// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      code: json['code'] as int? ?? 0,
      description: json['description'] as String? ?? "",
      field: json['field'] as String? ?? "",
      metaData: (json['meta_data'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'field': instance.field,
      'meta_data': instance.metaData,
    };
