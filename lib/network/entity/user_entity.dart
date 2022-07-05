/**
 * Created by : Ayush Kumar
 * Created on : 19-06-2022
 */
import 'package:json_annotation/json_annotation.dart';

part 'user_entity.g.dart';

@JsonSerializable()
class User {
  final String id;
  final String name;
  final String emailid;
  final String password;
  final String reffral_code;
  final String imgurl;

  User(
      {required this.id,
      required this.name,
      required this.emailid,
      required this.password,
      required this.reffral_code,
      required this.imgurl});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
