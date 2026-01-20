// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GradeCalculationRuleModel _$GradeCalculationRuleModelFromJson(
  Map<String, dynamic> json,
) => GradeCalculationRuleModel(
  id: (json['id'] as num).toInt(),
  calculation_verbal: json['calculation_verbal'] as String?,
  subjectId: (json['subject_id'] as num).toInt(),
  intervalId: (json['interval_id'] as num).toInt(),
);

Map<String, dynamic> _$GradeCalculationRuleModelToJson(
  GradeCalculationRuleModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'calculation_verbal': instance.calculation_verbal,
  'subject_id': instance.subjectId,
  'interval_id': instance.intervalId,
};

GradeModel _$GradeModelFromJson(Map<String, dynamic> json) => GradeModel(
  value: json['value'] as String?,
  givenAt: json['given_at'] == null
      ? null
      : DateTime.parse(json['given_at'] as String),
  collection: GradeCollectionModel.fromJson(
    json['collection'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$GradeModelToJson(GradeModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'given_at': instance.givenAt?.toIso8601String(),
      'collection': instance.collection,
    };

GradeCollectionModel _$GradeCollectionModelFromJson(
  Map<String, dynamic> json,
) => GradeCollectionModel(
  type: json['type'] as String?,
  name: json['name'] as String?,
  intervalId: (json['interval_id'] as num?)?.toInt(),
  subject: json['subject'] == null
      ? null
      : SubjectModel.fromJson(json['subject'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GradeCollectionModelToJson(
  GradeCollectionModel instance,
) => <String, dynamic>{
  'type': instance.type,
  'name': instance.name,
  'interval_id': instance.intervalId,
  'subject': instance.subject,
};
