// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RateData _$RateDataFromJson(Map<String, dynamic> json) => RateData(
      ticker: json['ticker'] as String,
      v: json['v'] as String,
      vw: json['vw'] as String,
      o: json['o'] as String,
      c: json['c'] as String,
      t: json['t'] as String?,
      n: json['n'] as String?,
    );

Map<String, dynamic> _$RateDataToJson(RateData instance) => <String, dynamic>{
      'ticker': instance.ticker,
      'v': instance.v,
      'vw': instance.vw,
      'o': instance.o,
      'c': instance.c,
      't': instance.t,
      'n': instance.n,
    };
