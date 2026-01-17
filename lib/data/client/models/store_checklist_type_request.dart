// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'store_checklist_type_request.g.dart';

@JsonSerializable()
class StoreChecklistTypeRequest {
  const StoreChecklistTypeRequest({
    required this.name,
  });
  
  factory StoreChecklistTypeRequest.fromJson(Map<String, Object?> json) => _$StoreChecklistTypeRequestFromJson(json);
  
  final String name;

  Map<String, Object?> toJson() => _$StoreChecklistTypeRequestToJson(this);
}
