// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_types_absence_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTypesAbsenceIdResponse _$GetTypesAbsenceIdResponseFromJson(
  Map<String, dynamic> json,
) => GetTypesAbsenceIdResponse(
  data: AbsenceType.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta8.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetTypesAbsenceIdResponseToJson(
  GetTypesAbsenceIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
