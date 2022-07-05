import 'package:annexa_app/models/order_data.dart';
import 'package:annexa_app/network/response/base_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_history_response.g.dart';

@JsonSerializable()
class OrderHistoryResponse extends BaseResponse {
  final List<OrderData> data;

  OrderHistoryResponse({
    required int status,
    required String messages,
    required String error,
    required this.data,
  }) : super(status: status, messages: messages, error: error);

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory OrderHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderHistoryResponseFromJson(json);

  /// Connect the generated [_$ResponseToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$OrderHistoryResponseToJson(this);
}
