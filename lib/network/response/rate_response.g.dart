// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RateResponse _$RateResponseFromJson(Map<String, dynamic> json) => RateResponse(
      status: json['status'] as int,
      messages: json['messages'] as String,
      error: json['error'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => RateData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RateResponseToJson(RateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'messages': instance.messages,
      'error': instance.error,
      'data': instance.data,
    };
