// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_absences_verifications_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAbsencesVerificationsIdResponse _$GetAbsencesVerificationsIdResponseFromJson(
  Map<String, dynamic> json,
) => GetAbsencesVerificationsIdResponse(
  data: AbsenceVerification.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta11.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetAbsencesVerificationsIdResponseToJson(
  GetAbsencesVerificationsIdResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
