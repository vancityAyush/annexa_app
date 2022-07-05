import 'package:annexa_app/util/util.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wallet_data.g.dart';

@JsonSerializable()
class WalletData {
  final String id;
  final String customerid;
  final String amount;

  final String type;
  final String balance;
  final String? stock_id;
  final String? exchange;
  final String? createdon;

  String get date {
    DateTime date = DateTime.parse(createdon!);
    return trDateFormat.format(date);
  }

  String get transactionType => type == 'Dr' ? 'Debit' : 'Credit';
  WalletData({
    required this.id,
    required this.customerid,
    required this.amount,
    required this.type,
    required this.balance,
    required this.stock_id,
    required this.exchange,
    required this.createdon,
  });

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory WalletData.fromJson(Map<String, dynamic> json) =>
      _$WalletDataFromJson(json);

  /// Connect the generated [_$ResponseToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$WalletDataToJson(this);
}
