// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_finalgrades_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFinalgradesResponse _$GetFinalgradesResponseFromJson(
  Map<String, dynamic> json,
) => GetFinalgradesResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Finalgrade.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetFinalgradesResponseToJson(
  GetFinalgradesResponse instance,
) => <String, dynamic>{'data': instance.data};
