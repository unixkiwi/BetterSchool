// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'checklist_type.dart';

part 'get_types_checklist_response.g.dart';

@JsonSerializable()
class GetTypesChecklistResponse {
  const GetTypesChecklistResponse({
    required this.data,
  });
  
  factory GetTypesChecklistResponse.fromJson(Map<String, Object?> json) => _$GetTypesChecklistResponseFromJson(json);
  
  final List<ChecklistType> data;

  Map<String, Object?> toJson() => _$GetTypesChecklistResponseToJson(this);
}
