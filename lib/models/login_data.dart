import 'package:json_annotation/json_annotation.dart';

part 'login_data.g.dart';

@JsonSerializable()
class LoginData {
  final String id;
  final String name;
  final String mobileno;

  final String emailid;
  final String password;
  final String? reffral_code;
  final String? imgurl;

  LoginData({
    required this.id,
    required this.name,
    required this.mobileno,
    required this.password,
    required this.emailid,
    this.reffral_code,
    this.imgurl,
  });

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);

  /// Connect the generated [_$ResponseToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$LoginDataToJson(this);
}
