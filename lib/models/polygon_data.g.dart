// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'polygon_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PolygonData _$PolygonDataFromJson(Map<String, dynamic> json) => PolygonData(
      o: (json['o'] as num).toDouble(),
      c: (json['c'] as num).toDouble(),
      t: json['t'] as int,
    );

Map<String, dynamic> _$PolygonDataToJson(PolygonData instance) =>
    <String, dynamic>{
      'o': instance.o,
      'c': instance.c,
      't': instance.t,
    };
