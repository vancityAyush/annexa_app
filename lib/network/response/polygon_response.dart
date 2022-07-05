import 'package:annexa_app/models/polygon_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'polygon_response.g.dart';

@JsonSerializable()
class PolygonResponse {
  final String status;
  final String ticker;
  final bool adjusted;
  final int queryCount;
  final List<PolygonData>? results;
  final int resultsCount;

  PolygonResponse({
    required this.status,
    required this.ticker,
    required this.adjusted,
    required this.queryCount,
    required this.results,
    required this.resultsCount,
  });

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory PolygonResponse.fromJson(Map<String, dynamic> json) =>
      _$PolygonResponseFromJson(json);

  /// Connect the generated [_$ResponseToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$PolygonResponseToJson(this);
}
