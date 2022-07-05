// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletResponse _$WalletResponseFromJson(Map<String, dynamic> json) =>
    WalletResponse(
      status: json['status'] as int,
      messages: json['messages'] as String,
      error: json['error'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => WalletData.fromJson(e as Map<String, dynamic>))
          .toList(),
      Wallet_Balance: json['Wallet_Balance'] as String,
    );

Map<String, dynamic> _$WalletResponseToJson(WalletResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'messages': instance.messages,
      'error': instance.error,
      'data': instance.data,
      'Wallet_Balance': instance.Wallet_Balance,
    };
