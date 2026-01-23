// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BesteSchuleApiResponse<T> _$BesteSchuleApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => BesteSchuleApiResponse<T>(
  data: _$nullableGenericFromJson(json['data'], fromJsonT),
);

Map<String, dynamic> _$BesteSchuleApiResponseToJson<T>(
  BesteSchuleApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{'data': _$nullableGenericToJson(instance.data, toJsonT)};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);

YearModel _$YearModelFromJson(Map<String, dynamic> json) => YearModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  from: json['from'] == null ? null : DateTime.parse(json['from'] as String),
  to: json['to'] == null ? null : DateTime.parse(json['to'] as String),
);

Map<String, dynamic> _$YearModelToJson(YearModel instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'from': instance.from?.toIso8601String(),
  'to': instance.to?.toIso8601String(),
};

TeacherModel _$TeacherModelFromJson(Map<String, dynamic> json) => TeacherModel(
  id: (json['id'] as num?)?.toInt(),
  local_id: json['local_id'] as String?,
  forename: json['forename'] as String?,
  name: json['name'] as String?,
);

Map<String, dynamic> _$TeacherModelToJson(TeacherModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'local_id': instance.local_id,
      'forename': instance.forename,
      'name': instance.name,
    };

GroupModel _$GroupModelFromJson(Map<String, dynamic> json) => GroupModel(
  name: json['name'] as String?,
  local_id: json['local_id'] as String?,
  meta: (json['meta'] as num?)?.toInt(),
);

Map<String, dynamic> _$GroupModelToJson(GroupModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'local_id': instance.local_id,
      'meta': instance.meta,
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
