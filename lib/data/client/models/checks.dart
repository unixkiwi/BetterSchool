// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'checks.g.dart';

@JsonSerializable()
class Checks {
  const Checks({
    this.checked,
    this.checkedAt,
    this.note,
  });
  
  factory Checks.fromJson(Map<String, Object?> json) => _$ChecksFromJson(json);
  
  final bool? checked;
  @JsonKey(name: 'checked_at')
  final DateTime? checkedAt;
  final String? note;

  Map<String, Object?> toJson() => _$ChecksToJson(this);
}
