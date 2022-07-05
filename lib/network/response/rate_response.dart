import 'package:annexa_app/models/rate_data.dart';
import 'package:annexa_app/network/response/base_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rate_response.g.dart';

@JsonSerializable()
class RateResponse extends BaseResponse {
  final List<RateData> data;

  RateData gerRate(String ticker) {
    return data.firstWhere((element) => element.ticker == ticker);
  }

  RateResponse({
    required int status,
    required String messages,
    required String error,
    required this.data,
  }) : super(status: status, messages: messages, error: error);

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory RateResponse.fromJson(Map<String, dynamic> json) =>
      _$RateResponseFromJson(json);

  /// Connect the generated [_$ResponseToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$RateResponseToJson(this);
}
