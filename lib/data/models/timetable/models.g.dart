// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchoolWeekModel _$SchoolWeekModelFromJson(Map<String, dynamic> json) =>
    SchoolWeekModel(
      days: (json['days'] as List<dynamic>?)
          ?.map((e) => SchoolDayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SchoolWeekModelToJson(SchoolWeekModel instance) =>
    <String, dynamic>{'days': instance.days};

SchoolDayModel _$SchoolDayModelFromJson(Map<String, dynamic> json) =>
    SchoolDayModel(
      id: json['id'] as String?,
      date: json['date'] == null
          ? null
          : DateTime.parse(json['date'] as String),
      lessons: (json['lessons'] as List<dynamic>?)
          ?.map((e) => LessonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SchoolDayModelToJson(SchoolDayModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date?.toIso8601String(),
      'lessons': instance.lessons,
    };

LessonModel _$LessonModelFromJson(Map<String, dynamic> json) => LessonModel(
  id: (json['id'] as num?)?.toInt(),
  nr: (json['nr'] as num?)?.toInt(),
  status: json['status'] as String?,
  subject: json['subject'] == null
      ? null
      : SubjectModel.fromJson(json['subject'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LessonModelToJson(LessonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nr': instance.nr,
      'status': instance.status,
      'subject': instance.subject,
    };

SubjectModel _$SubjectModelFromJson(Map<String, dynamic> json) => SubjectModel(
  id: (json['id'] as num?)?.toInt(),
  local_id: json['local_id'] as String?,
  name: json['name'] as String?,
);

Map<String, dynamic> _$SubjectModelToJson(SubjectModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'local_id': instance.local_id,
      'name': instance.name,
    };
