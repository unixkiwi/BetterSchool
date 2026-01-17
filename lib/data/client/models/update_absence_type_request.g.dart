// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_absence_type_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateAbsenceTypeRequest _$UpdateAbsenceTypeRequestFromJson(
  Map<String, dynamic> json,
) => UpdateAbsenceTypeRequest(
  name: json['name'] as String,
  defaultValue: json['default'] as bool,
  editableAs: json['editable_as'] == null
      ? null
      : UpdateAbsenceTypeRequestEditableAs.fromJson(
          json['editable_as'] as String?,
        ),
  defaultPresent: json['default_present'] as bool?,
);

Map<String, dynamic> _$UpdateAbsenceTypeRequestToJson(
  UpdateAbsenceTypeRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'default': instance.defaultValue,
  'editable_as':
      _$UpdateAbsenceTypeRequestEditableAsEnumMap[instance.editableAs],
  'default_present': instance.defaultPresent,
};

const _$UpdateAbsenceTypeRequestEditableAsEnumMap = {
  UpdateAbsenceTypeRequestEditableAs.guardian: 'guardian',
  UpdateAbsenceTypeRequestEditableAs.teacher: 'teacher',
  UpdateAbsenceTypeRequestEditableAs.management: 'management',
  UpdateAbsenceTypeRequestEditableAs.$unknown: r'$unknown',
};
