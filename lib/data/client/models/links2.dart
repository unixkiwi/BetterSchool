// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'links2.g.dart';

@JsonSerializable()
class Links2 {
  const Links2({
    required this.first,
    required this.last,
    required this.prev,
    required this.next,
  });
  
  factory Links2.fromJson(Map<String, Object?> json) => _$Links2FromJson(json);
  
  final String? first;
  final String? last;
  final String? prev;
  final String? next;

  Map<String, Object?> toJson() => _$Links2ToJson(this);
}
