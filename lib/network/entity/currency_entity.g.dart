// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Currency _$CurrencyFromJson(Map<String, dynamic> json) => Currency(
      json['id'] as String,
      json['base_currency'] as String,
      json['mian_currency'] as String,
      json['ticker'] as String,
      json['base_imgurl'] as String,
      json['main_imgurl'] as String,
      json['stock_type'] as String,
      json['percentage'] as String,
    );

Map<String, dynamic> _$CurrencyToJson(Currency instance) => <String, dynamic>{
      'id': instance.id,
      'base_currency': instance.base_currency,
      'mian_currency': instance.mian_currency,
      'ticker': instance.ticker,
      'base_imgurl': instance.base_imgurl,
      'main_imgurl': instance.main_imgurl,
      'stock_type': instance.stock_type,
      'percentage': instance.percentage,
    };
