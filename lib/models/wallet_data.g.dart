// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletData _$WalletDataFromJson(Map<String, dynamic> json) => WalletData(
      id: json['id'] as String,
      customerid: json['customerid'] as String,
      amount: json['amount'] as String,
      type: json['type'] as String,
      balance: json['balance'] as String,
      stock_id: json['stock_id'] as String?,
      exchange: json['exchange'] as String?,
      createdon: json['createdon'] as String?,
    );

Map<String, dynamic> _$WalletDataToJson(WalletData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerid': instance.customerid,
      'amount': instance.amount,
      'type': instance.type,
      'balance': instance.balance,
      'stock_id': instance.stock_id,
      'exchange': instance.exchange,
      'createdon': instance.createdon,
    };
