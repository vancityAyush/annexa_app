import 'package:annexa_app/network/response/base_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'save_order_response.g.dart';

@JsonSerializable()
class SaveOrderResponse extends BaseResponse {
  String? orderid;
  String? datetime;
  SaveOrderResponse({
    required int status,
    required String messages,
    required String error,
    this.orderid,
    this.datetime,
  }) : super(status: status, messages: messages, error: error);

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory SaveOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$SaveOrderResponseFromJson(json);

  /// Connect the generated [_$ResponseToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SaveOrderResponseToJson(this);
}
