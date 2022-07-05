// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderHistoryResponse _$OrderHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    OrderHistoryResponse(
      status: json['status'] as int,
      messages: json['messages'] as String,
      error: json['error'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => OrderData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderHistoryResponseToJson(
        OrderHistoryResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'messages': instance.messages,
      'error': instance.error,
      'data': instance.data,
    };
