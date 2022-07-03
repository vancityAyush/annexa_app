import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class ApiResponse {
  final int status;
  final String messages;
  final String error;
  final dynamic data;

  ApiResponse({
    required this.status,
    required this.messages,
    required this.error,
    this.data,
  });

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);

  /// Connect the generated [_$ResponseToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}
