// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'checklist.dart';
import 'meta22.dart';

part 'get_checklists_id_response.g.dart';

@JsonSerializable()
class GetChecklistsIdResponse {
  const GetChecklistsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetChecklistsIdResponse.fromJson(Map<String, Object?> json) => _$GetChecklistsIdResponseFromJson(json);
  
  final Checklist data;
  final Meta22 meta;

  Map<String, Object?> toJson() => _$GetChecklistsIdResponseToJson(this);
}
