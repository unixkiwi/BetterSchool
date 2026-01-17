// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_levels_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetLevelsResponse _$GetLevelsResponseFromJson(Map<String, dynamic> json) =>
    GetLevelsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Level.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetLevelsResponseToJson(GetLevelsResponse instance) =>
    <String, dynamic>{'data': instance.data};
