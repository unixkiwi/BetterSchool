// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_absences_absence_verifications_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostAbsencesAbsenceVerificationsResponse
_$PostAbsencesAbsenceVerificationsResponseFromJson(Map<String, dynamic> json) =>
    PostAbsencesAbsenceVerificationsResponse(
      data: AbsenceVerification.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta10.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostAbsencesAbsenceVerificationsResponseToJson(
  PostAbsencesAbsenceVerificationsResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
