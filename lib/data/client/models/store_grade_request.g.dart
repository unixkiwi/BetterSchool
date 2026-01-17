// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_grade_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreGradeRequest _$StoreGradeRequestFromJson(Map<String, dynamic> json) =>
    StoreGradeRequest(
      value: json['value'] as String,
      studentId: (json['student_id'] as num).toInt(),
      collectionId: (json['collection_id'] as num).toInt(),
      givenAt: json['given_at'] == null
          ? null
          : DateTime.parse(json['given_at'] as String),
    );

Map<String, dynamic> _$StoreGradeRequestToJson(StoreGradeRequest instance) =>
    <String, dynamic>{
      'value': instance.value,
      'given_at': instance.givenAt?.toIso8601String(),
      'student_id': instance.studentId,
      'collection_id': instance.collectionId,
    };
