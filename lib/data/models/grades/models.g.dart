// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GradeModel _$GradeModelFromJson(Map<String, dynamic> json) => GradeModel(
  value: json['value'] as String,
  givenAt: DateTime.parse(json['given_at'] as String),
  collection: GradeCollectionModel.fromJson(
    json['collection'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$GradeModelToJson(GradeModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'given_at': instance.givenAt.toIso8601String(),
      'collection': instance.collection,
    };

GradeCollectionModel _$GradeCollectionModelFromJson(
  Map<String, dynamic> json,
) => GradeCollectionModel(
  type: json['type'] as String,
  name: json['name'] as String,
  intervalId: (json['interval_id'] as num).toInt(),
  subject: SubjectModel.fromJson(json['subject'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GradeCollectionModelToJson(
  GradeCollectionModel instance,
) => <String, dynamic>{
  'type': instance.type,
  'name': instance.name,
  'interval_id': instance.intervalId,
  'subject': instance.subject,
};
