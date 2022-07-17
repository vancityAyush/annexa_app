// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrencyData _$CurrencyDataFromJson(Map<String, dynamic> json) => CurrencyData(
      id: json['id'] as String,
      base_currency: json['base_currency'] as String,
      mian_currency: json['mian_currency'] as String,
      ticker: json['ticker'] as String,
      base_imgurl: json['base_imgurl'] as String,
      percentage: json['percentage'] as String,
      main_imgurl: json['main_imgurl'] as String?,
      stock_type: json['stock_type'] as String?,
    );

Map<String, dynamic> _$CurrencyDataToJson(CurrencyData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'base_currency': instance.base_currency,
      'mian_currency': instance.mian_currency,
      'percentage': instance.percentage,
      'ticker': instance.ticker,
      'base_imgurl': instance.base_imgurl,
      'main_imgurl': instance.main_imgurl,
      'stock_type': instance.stock_type,
    };
