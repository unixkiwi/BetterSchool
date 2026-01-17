// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'teacher.dart';
import 'meta140.dart';

part 'delete_teachers_id_user_response.g.dart';

@JsonSerializable()
class DeleteTeachersIdUserResponse {
  const DeleteTeachersIdUserResponse({
    required this.data,
    required this.meta,
  });
  
  factory DeleteTeachersIdUserResponse.fromJson(Map<String, Object?> json) => _$DeleteTeachersIdUserResponseFromJson(json);
  
  final Teacher data;
  final Meta140 meta;

  Map<String, Object?> toJson() => _$DeleteTeachersIdUserResponseToJson(this);
}
