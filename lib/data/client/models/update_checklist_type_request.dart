// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'update_checklist_type_request.g.dart';

@JsonSerializable()
class UpdateChecklistTypeRequest {
  const UpdateChecklistTypeRequest({
    required this.name,
  });
  
  factory UpdateChecklistTypeRequest.fromJson(Map<String, Object?> json) => _$UpdateChecklistTypeRequestFromJson(json);
  
  final String name;

  Map<String, Object?> toJson() => _$UpdateChecklistTypeRequestToJson(this);
}
