// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'polygon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PolygonResponse _$PolygonResponseFromJson(Map<String, dynamic> json) =>
    PolygonResponse(
      status: json['status'] as String,
      ticker: json['ticker'] as String,
      adjusted: json['adjusted'] as bool,
      queryCount: json['queryCount'] as int,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => PolygonData.fromJson(e as Map<String, dynamic>))
          .toList(),
      resultsCount: json['resultsCount'] as int,
    );

Map<String, dynamic> _$PolygonResponseToJson(PolygonResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'ticker': instance.ticker,
      'adjusted': instance.adjusted,
      'queryCount': instance.queryCount,
      'results': instance.results,
      'resultsCount': instance.resultsCount,
    };
