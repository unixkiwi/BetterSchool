// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_substitution_plans_lessons_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSubstitutionPlansLessonsResponse
_$GetSubstitutionPlansLessonsResponseFromJson(Map<String, dynamic> json) =>
    GetSubstitutionPlansLessonsResponse(
      data: (json['data'] as List<dynamic>)
          .map(
            (e) => SubstitutionPlanLesson.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$GetSubstitutionPlansLessonsResponseToJson(
  GetSubstitutionPlansLessonsResponse instance,
) => <String, dynamic>{'data': instance.data};
