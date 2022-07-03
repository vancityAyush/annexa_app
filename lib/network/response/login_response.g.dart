// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      status: json['status'] as int,
      messages: json['messages'] as String,
      error: json['error'] as String,
      data: LoginData.fromJson(json['data'] as Map<String, dynamic>),
      Wallet_Balance: json['Wallet_Balance'] as String?,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'messages': instance.messages,
      'error': instance.error,
      'data': instance.data,
      'Wallet_Balance': instance.Wallet_Balance,
    };
