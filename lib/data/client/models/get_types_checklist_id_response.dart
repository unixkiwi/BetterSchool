// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'checklist_type.dart';
import 'meta24.dart';

part 'get_types_checklist_id_response.g.dart';

@JsonSerializable()
class GetTypesChecklistIdResponse {
  const GetTypesChecklistIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetTypesChecklistIdResponse.fromJson(Map<String, Object?> json) => _$GetTypesChecklistIdResponseFromJson(json);
  
  final ChecklistType data;
  final Meta24 meta;

  Map<String, Object?> toJson() => _$GetTypesChecklistIdResponseToJson(this);
}
