// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      name: json['name'] as String,
      emailid: json['emailid'] as String,
      password: json['password'] as String,
      reffral_code: json['reffral_code'] as String,
      imgurl: json['imgurl'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'emailid': instance.emailid,
      'password': instance.password,
      'reffral_code': instance.reffral_code,
      'imgurl': instance.imgurl,
    };
