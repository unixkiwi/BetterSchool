// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_types_absence_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTypesAbsenceResponse _$GetTypesAbsenceResponseFromJson(
  Map<String, dynamic> json,
) => GetTypesAbsenceResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => AbsenceType.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetTypesAbsenceResponseToJson(
  GetTypesAbsenceResponse instance,
) => <String, dynamic>{'data': instance.data};
