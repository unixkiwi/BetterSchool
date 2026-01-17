// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_absences_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAbsencesResponse _$GetAbsencesResponseFromJson(Map<String, dynamic> json) =>
    GetAbsencesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Absence.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAbsencesResponseToJson(
  GetAbsencesResponse instance,
) => <String, dynamic>{'data': instance.data};
