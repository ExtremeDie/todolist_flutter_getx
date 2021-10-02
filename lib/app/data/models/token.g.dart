// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Token _$$_TokenFromJson(Map<String, dynamic> json) => _$_Token(
      token: json['token'] as String,
      expires: DateTime.parse(json['expires'] as String),
    );

Map<String, dynamic> _$$_TokenToJson(_$_Token instance) => <String, dynamic>{
      'token': instance.token,
      'expires': instance.expires.toIso8601String(),
    };
