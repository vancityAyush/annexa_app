import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse {
  final int status;
  final String messages;
  final String error;

  BaseResponse({
    required this.status,
    required this.messages,
    required this.error,
  });

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  /// Connect the generated [_$ResponseToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}
