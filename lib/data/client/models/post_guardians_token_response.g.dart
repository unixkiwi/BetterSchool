// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_guardians_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostGuardiansTokenResponse _$PostGuardiansTokenResponseFromJson(
  Map<String, dynamic> json,
) => PostGuardiansTokenResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Guardian.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PostGuardiansTokenResponseToJson(
  PostGuardiansTokenResponse instance,
) => <String, dynamic>{'data': instance.data};
