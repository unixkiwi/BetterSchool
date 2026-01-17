// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'links4.g.dart';

@JsonSerializable()
class Links4 {
  const Links4({
    required this.first,
    required this.last,
    required this.prev,
    required this.next,
  });
  
  factory Links4.fromJson(Map<String, Object?> json) => _$Links4FromJson(json);
  
  final String? first;
  final String? last;
  final String? prev;
  final String? next;

  Map<String, Object?> toJson() => _$Links4ToJson(this);
}
