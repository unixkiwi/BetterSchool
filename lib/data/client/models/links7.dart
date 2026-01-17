// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'links7.g.dart';

@JsonSerializable()
class Links7 {
  const Links7({
    required this.url,
    required this.label,
    required this.active,
  });
  
  factory Links7.fromJson(Map<String, Object?> json) => _$Links7FromJson(json);
  
  final String? url;
  final String label;
  final bool active;

  Map<String, Object?> toJson() => _$Links7ToJson(this);
}
