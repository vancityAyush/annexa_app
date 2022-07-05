import 'package:json_annotation/json_annotation.dart';

part 'rate_data.g.dart';

@JsonSerializable()
class RateData {
  final String ticker;
  final String v;
  final String vw;

  final String o;
  final String c;
  final String? t;
  final String? n;

  RateData({
    required this.ticker,
    required this.v,
    required this.vw,
    required this.o,
    required this.c,
    this.t,
    this.n,
  });

  DateTime get time {
    if (t == null) {
      return DateTime.now();
    }
    return DateTime.fromMillisecondsSinceEpoch(int.parse(t!));
  }

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory RateData.fromJson(Map<String, dynamic> json) =>
      _$RateDataFromJson(json);

  /// Connect the generated [_$ResponseToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$RateDataToJson(this);
}
