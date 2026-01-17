// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'update_announcement_request.g.dart';

@JsonSerializable()
class UpdateAnnouncementRequest {
  const UpdateAnnouncementRequest({
    required this.title,
    required this.from,
    required this.to,
    required this.forValue,
    this.message,
    this.needConfirmationFromStudent,
    this.needConfirmationFromGuardian,
    this.typeId,
    this.groupIds,
  });
  
  factory UpdateAnnouncementRequest.fromJson(Map<String, Object?> json) => _$UpdateAnnouncementRequestFromJson(json);
  
  final String title;
  final String? message;
  final DateTime from;
  final DateTime to;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final String forValue;
  @JsonKey(name: 'need_confirmation_from_student')
  final bool? needConfirmationFromStudent;
  @JsonKey(name: 'need_confirmation_from_guardian')
  final bool? needConfirmationFromGuardian;
  @JsonKey(name: 'type_id')
  final int? typeId;
  @JsonKey(name: 'group_ids')
  final List<int>? groupIds;

  Map<String, Object?> toJson() => _$UpdateAnnouncementRequestToJson(this);
}
