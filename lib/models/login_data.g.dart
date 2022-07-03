// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginData _$LoginDataFromJson(Map<String, dynamic> json) => LoginData(
      id: json['id'] as String,
      name: json['name'] as String,
      mobileno: json['mobileno'] as String,
      password: json['password'] as String,
      emailid: json['emailid'] as String,
      reffral_code: json['reffral_code'] as String?,
      imgurl: json['imgurl'] as String?,
    );

Map<String, dynamic> _$LoginDataToJson(LoginData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mobileno': instance.mobileno,
      'emailid': instance.emailid,
      'password': instance.password,
      'reffral_code': instance.reffral_code,
      'imgurl': instance.imgurl,
    };
