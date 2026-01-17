// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_subjects_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSubjectsResponse _$GetSubjectsResponseFromJson(Map<String, dynamic> json) =>
    GetSubjectsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Subject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetSubjectsResponseToJson(
  GetSubjectsResponse instance,
) => <String, dynamic>{'data': instance.data};
