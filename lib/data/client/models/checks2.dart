// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'checks2.g.dart';

@JsonSerializable()
class Checks2 {
  const Checks2({
    this.checked,
    this.checkedAt,
    this.note,
  });
  
  factory Checks2.fromJson(Map<String, Object?> json) => _$Checks2FromJson(json);
  
  final bool? checked;
  @JsonKey(name: 'checked_at')
  final DateTime? checkedAt;
  final String? note;

  Map<String, Object?> toJson() => _$Checks2ToJson(this);
}
