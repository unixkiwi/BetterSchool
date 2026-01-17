// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'links9.g.dart';

@JsonSerializable()
class Links9 {
  const Links9({
    required this.url,
    required this.label,
    required this.active,
  });
  
  factory Links9.fromJson(Map<String, Object?> json) => _$Links9FromJson(json);
  
  final String? url;
  final String label;
  final bool active;

  Map<String, Object?> toJson() => _$Links9ToJson(this);
}
