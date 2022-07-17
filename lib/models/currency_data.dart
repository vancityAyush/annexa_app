import 'package:json_annotation/json_annotation.dart';

part 'currency_data.g.dart';

@JsonSerializable()
class CurrencyData {
  final String id;
  final String base_currency;
  final String mian_currency;
  final String percentage;
  final String ticker;
  final String base_imgurl;
  final String? main_imgurl;
  final String? stock_type;

  String get baseImg => "https://annexa.frantic.in/$base_imgurl";
  String get mainImg => "https://annexa.frantic.in/$main_imgurl";

  String get text => mian_currency + "/" + base_currency;
  CurrencyData({
    required this.id,
    required this.base_currency,
    required this.mian_currency,
    required this.ticker,
    required this.base_imgurl,
    required this.percentage,
    this.main_imgurl,
    this.stock_type,
  });

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory CurrencyData.fromJson(Map<String, dynamic> json) =>
      _$CurrencyDataFromJson(json);

  /// Connect the generated [_$ResponseToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CurrencyDataToJson(this);
}
