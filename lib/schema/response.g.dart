// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseMessage _$ResponseMessageFromJson(Map<String, dynamic> json) =>
    ResponseMessage(
      code: json['code'] as int? ?? 0,
      description: json['description'] as String? ?? "",
      field: json['field'] as String? ?? "",
      metaData: (json['meta_data'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$ResponseMessageToJson(ResponseMessage instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'field': instance.field,
      'meta_data': instance.metaData,
    };

ResponseData<T> _$ResponseDataFromJson<T>(Map<String, dynamic> json) =>
    ResponseData<T>(
      total: json['total'] as int? ?? 0,
      limit: json['limit'] as int? ?? 0,
      offset: json['offset'] as int? ?? 0,
    );

Map<String, dynamic> _$ResponseDataToJson<T>(ResponseData<T> instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'offset': instance.offset,
    };

Response<T> _$ResponseFromJson<T>(Map<String, dynamic> json) => Response<T>(
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) => ResponseMessage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      data: ResponseData<T>.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseToJson<T>(Response<T> instance) =>
    <String, dynamic>{
      'messages': instance.messages.map((e) => e.toJson()).toList(),
      'data': instance.data.toJson(),
    };
