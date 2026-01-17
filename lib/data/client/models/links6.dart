// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'links6.g.dart';

@JsonSerializable()
class Links6 {
  const Links6({
    required this.first,
    required this.last,
    required this.prev,
    required this.next,
  });
  
  factory Links6.fromJson(Map<String, Object?> json) => _$Links6FromJson(json);
  
  final String? first;
  final String? last;
  final String? prev;
  final String? next;

  Map<String, Object?> toJson() => _$Links6ToJson(this);
}
