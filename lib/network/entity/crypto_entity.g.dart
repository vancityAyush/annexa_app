// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoEntity _$CryptoEntityFromJson(Map<String, dynamic> json) => CryptoEntity(
      symbol: json['symbol'] as String,
      baseAsset: json['baseAsset'] as String,
      quoteAsset: json['quoteAsset'] as String,
      openPrice: json['openPrice'] as String,
      lowPrice: json['lowPrice'] as String,
      highPrice: json['highPrice'] as String,
      lastPrice: json['lastPrice'] as String,
      volume: json['volume'] as String,
      bidPrice: json['bidPrice'] as String,
      askPrice: json['askPrice'] as String,
      at: json['at'] as int,
    );

Map<String, dynamic> _$CryptoEntityToJson(CryptoEntity instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'baseAsset': instance.baseAsset,
      'quoteAsset': instance.quoteAsset,
      'openPrice': instance.openPrice,
      'lowPrice': instance.lowPrice,
      'highPrice': instance.highPrice,
      'lastPrice': instance.lastPrice,
      'volume': instance.volume,
      'bidPrice': instance.bidPrice,
      'askPrice': instance.askPrice,
      'at': instance.at,
    };
