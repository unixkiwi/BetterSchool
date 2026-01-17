// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'checklist_type.dart';
import 'meta25.dart';

part 'put_types_checklist_id_response.g.dart';

@JsonSerializable()
class PutTypesChecklistIdResponse {
  const PutTypesChecklistIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutTypesChecklistIdResponse.fromJson(Map<String, Object?> json) => _$PutTypesChecklistIdResponseFromJson(json);
  
  final ChecklistType data;
  final Meta25 meta;

  Map<String, Object?> toJson() => _$PutTypesChecklistIdResponseToJson(this);
}
