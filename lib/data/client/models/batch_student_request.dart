// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'gender.dart';
import 'import_action.dart';

part 'batch_student_request.g.dart';

@JsonSerializable()
class BatchStudentRequest {
  const BatchStudentRequest({
    required this.importAction,
    this.id,
    this.name,
    this.nickname,
    this.forename,
    this.isAdult,
    this.birthday,
    this.phone,
    this.gender,
    this.localId,
    this.deleted,
    this.custom,
    this.tags,
  });
  
  factory BatchStudentRequest.fromJson(Map<String, Object?> json) => _$BatchStudentRequestFromJson(json);
  
  final int? id;
  final String? name;
  final String? nickname;
  final String? forename;
  @JsonKey(name: 'is_adult')
  final bool? isAdult;
  final DateTime? birthday;
  final String? phone;
  final Gender? gender;
  @JsonKey(name: 'local_id')
  final String? localId;
  final bool? deleted;
  final List<String>? custom;
  final List<String>? tags;
  final ImportAction importAction;

  Map<String, Object?> toJson() => _$BatchStudentRequestToJson(this);
}
