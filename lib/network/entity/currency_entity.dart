/**
 * Created by : Ayush Kumar
 * Created on : 19-06-2022
 */
import 'package:json_annotation/json_annotation.dart';

part 'currency_entity.g.dart';

@JsonSerializable()
class Currency {
  final String id;
  final String base_currency;
  final String mian_currency;
  final String ticker;
  final String base_imgurl;
  final String main_imgurl;
  final String stock_type;
  final String percentage;

  Currency(this.id, this.base_currency, this.mian_currency, this.ticker,
      this.base_imgurl, this.main_imgurl, this.stock_type, this.percentage);

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
  Map<String, dynamic> toJson() => _$CurrencyToJson(this);
}
