import 'package:json_annotation/json_annotation.dart';

part 'order_data.g.dart';

@JsonSerializable()
class OrderData {
  final String customerid;
  final String type;
  final String bid_price;
  final String amount;
  final String traid_time;
  final String profit_perc;
  final String profit;
  final String end_traid;
  final String orderid;
  final String close_price;
  final String status;
  final String ticker;
  final String base_imgurl;
  final String main_imgurl;

  OrderData({
    required this.customerid,
    required this.type,
    required this.bid_price,
    required this.amount,
    required this.traid_time,
    required this.profit_perc,
    required this.profit,
    required this.end_traid,
    required this.orderid,
    required this.close_price,
    required this.status,
    required this.ticker,
    required this.base_imgurl,
    required this.main_imgurl,
  });

  String get baseImg => "https://annexa.frantic.in/$base_imgurl";
  String get mainImg => "https://annexa.frantic.in/$main_imgurl";
  String get orderType => type == "1" ? "Call" : "Put";

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory OrderData.fromJson(Map<String, dynamic> json) =>
      _$OrderDataFromJson(json);

  /// Connect the generated [_$ResponseToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$OrderDataToJson(this);
}
