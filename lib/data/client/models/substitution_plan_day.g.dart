// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'substitution_plan_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstitutionPlanDay _$SubstitutionPlanDayFromJson(Map<String, dynamic> json) =>
    SubstitutionPlanDay(
      id: (json['id'] as num).toInt(),
      date: json['date'] as String,
      notes: json['notes'] as String,
      lessons: (json['lessons'] as List<dynamic>?)
          ?.map(
            (e) => SubstitutionPlanLesson.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$SubstitutionPlanDayToJson(
  SubstitutionPlanDay instance,
) => <String, dynamic>{
  'id': instance.id,
  'date': instance.date,
  'notes': instance.notes,
  'lessons': instance.lessons,
};
