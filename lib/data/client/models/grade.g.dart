// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Grade _$GradeFromJson(Map<String, dynamic> json) => Grade(
  id: (json['id'] as num).toInt(),
  value: json['value'] as String,
  givenAt: json['given_at'] as String,
  student: json['student'] == null
      ? null
      : Student.fromJson(json['student'] as Map<String, dynamic>),
  subject: json['subject'] == null
      ? null
      : Subject.fromJson(json['subject'] as Map<String, dynamic>),
  collection: json['collection'] == null
      ? null
      : Collection.fromJson(json['collection'] as Map<String, dynamic>),
  teacher: json['teacher'] == null
      ? null
      : Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
  histories: (json['histories'] as List<dynamic>?)
      ?.map((e) => History.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GradeToJson(Grade instance) => <String, dynamic>{
  'id': instance.id,
  'value': instance.value,
  'given_at': instance.givenAt,
  'student': instance.student,
  'subject': instance.subject,
  'collection': instance.collection,
  'teacher': instance.teacher,
  'histories': instance.histories,
};
