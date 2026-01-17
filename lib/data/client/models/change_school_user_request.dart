// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'change_school_user_request.g.dart';

@JsonSerializable()
class ChangeSchoolUserRequest {
  const ChangeSchoolUserRequest({
    required this.id,
  });
  
  factory ChangeSchoolUserRequest.fromJson(Map<String, Object?> json) => _$ChangeSchoolUserRequestFromJson(json);
  
  final int id;

  Map<String, Object?> toJson() => _$ChangeSchoolUserRequestToJson(this);
}
