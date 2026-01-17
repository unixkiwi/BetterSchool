// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_absences_verifications_verification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PutAbsencesVerificationsVerificationResponse
_$PutAbsencesVerificationsVerificationResponseFromJson(
  Map<String, dynamic> json,
) => PutAbsencesVerificationsVerificationResponse(
  data: AbsenceVerification.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta12.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PutAbsencesVerificationsVerificationResponseToJson(
  PutAbsencesVerificationsVerificationResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
