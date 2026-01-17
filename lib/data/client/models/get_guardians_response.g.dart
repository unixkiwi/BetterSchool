// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_guardians_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGuardiansResponse _$GetGuardiansResponseFromJson(
  Map<String, dynamic> json,
) => GetGuardiansResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Guardian.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetGuardiansResponseToJson(
  GetGuardiansResponse instance,
) => <String, dynamic>{'data': instance.data};
