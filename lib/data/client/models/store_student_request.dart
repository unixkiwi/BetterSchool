// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'store_student_request_gender.dart';

part 'store_student_request.g.dart';

@JsonSerializable()
class StoreStudentRequest {
  const StoreStudentRequest({
    required this.name,
    required this.localId,
    this.forename,
    this.nickname,
    this.gender,
    this.birthday,
    this.isAdult,
    this.phone,
    this.tagIds,
  });
  
  factory StoreStudentRequest.fromJson(Map<String, Object?> json) => _$StoreStudentRequestFromJson(json);
  
  final String name;
  final String? forename;
  final String? nickname;
  final StoreStudentRequestGender? gender;
  final DateTime? birthday;
  @JsonKey(name: 'is_adult')
  final bool? isAdult;
  final String? phone;
  @JsonKey(name: 'local_id')
  final String localId;
  @JsonKey(name: 'tag_ids')
  final List<int>? tagIds;

  Map<String, Object?> toJson() => _$StoreStudentRequestToJson(this);
}
