// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'links3.g.dart';

@JsonSerializable()
class Links3 {
  const Links3({
    required this.url,
    required this.label,
    required this.active,
  });
  
  factory Links3.fromJson(Map<String, Object?> json) => _$Links3FromJson(json);
  
  final String? url;
  final String label;
  final bool active;

  Map<String, Object?> toJson() => _$Links3ToJson(this);
}
