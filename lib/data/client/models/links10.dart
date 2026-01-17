// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'links10.g.dart';

@JsonSerializable()
class Links10 {
  const Links10({
    required this.first,
    required this.last,
    required this.prev,
    required this.next,
  });
  
  factory Links10.fromJson(Map<String, Object?> json) => _$Links10FromJson(json);
  
  final String? first;
  final String? last;
  final String? prev;
  final String? next;

  Map<String, Object?> toJson() => _$Links10ToJson(this);
}
