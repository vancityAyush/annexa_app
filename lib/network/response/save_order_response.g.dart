// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaveOrderResponse _$SaveOrderResponseFromJson(Map<String, dynamic> json) =>
    SaveOrderResponse(
      status: json['status'] as int,
      messages: json['messages'] as String,
      error: json['error'] as String,
      orderid: json['orderid'] as String?,
      datetime: json['datetime'] as String?,
    );

Map<String, dynamic> _$SaveOrderResponseToJson(SaveOrderResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'messages': instance.messages,
      'error': instance.error,
      'orderid': instance.orderid,
      'datetime': instance.datetime,
    };
