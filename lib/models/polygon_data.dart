import 'package:json_annotation/json_annotation.dart';

part 'polygon_data.g.dart';

@JsonSerializable()
class PolygonData {
  final double o;
  final double c;
  final int t;

  PolygonData({
    required this.o,
    required this.c,
    required this.t,
  });

  DateTime get time {
    if (t == null) {
      return DateTime.now();
    }
    return DateTime.fromMillisecondsSinceEpoch(t);
  }

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory PolygonData.fromJson(Map<String, dynamic> json) =>
      _$PolygonDataFromJson(json);

  /// Connect the generated [_$ResponseToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$PolygonDataToJson(this);
}
