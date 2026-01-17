// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_absence_type_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreAbsenceTypeRequest _$StoreAbsenceTypeRequestFromJson(
  Map<String, dynamic> json,
) => StoreAbsenceTypeRequest(
  name: json['name'] as String,
  defaultValue: json['default'] as bool,
  editableAs: json['editable_as'] == null
      ? null
      : StoreAbsenceTypeRequestEditableAs.fromJson(
          json['editable_as'] as String?,
        ),
  defaultPresent: json['default_present'] as bool?,
);

Map<String, dynamic> _$StoreAbsenceTypeRequestToJson(
  StoreAbsenceTypeRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'default': instance.defaultValue,
  'editable_as':
      _$StoreAbsenceTypeRequestEditableAsEnumMap[instance.editableAs],
  'default_present': instance.defaultPresent,
};

const _$StoreAbsenceTypeRequestEditableAsEnumMap = {
  StoreAbsenceTypeRequestEditableAs.guardian: 'guardian',
  StoreAbsenceTypeRequestEditableAs.teacher: 'teacher',
  StoreAbsenceTypeRequestEditableAs.management: 'management',
  StoreAbsenceTypeRequestEditableAs.$unknown: r'$unknown',
};
