// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'checklist.dart';

part 'get_checklists_response.g.dart';

@JsonSerializable()
class GetChecklistsResponse {
  const GetChecklistsResponse({
    required this.data,
  });
  
  factory GetChecklistsResponse.fromJson(Map<String, Object?> json) => _$GetChecklistsResponseFromJson(json);
  
  final List<Checklist> data;

  Map<String, Object?> toJson() => _$GetChecklistsResponseToJson(this);
}
