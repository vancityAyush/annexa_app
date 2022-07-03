// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrencyResponse _$CurrencyResponseFromJson(Map<String, dynamic> json) =>
    CurrencyResponse(
      status: json['status'] as int,
      messages: json['messages'] as String,
      error: json['error'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => CurrencyData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CurrencyResponseToJson(CurrencyResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'messages': instance.messages,
      'error': instance.error,
      'data': instance.data,
    };
