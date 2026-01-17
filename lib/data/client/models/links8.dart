// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'links8.g.dart';

@JsonSerializable()
class Links8 {
  const Links8({
    required this.first,
    required this.last,
    required this.prev,
    required this.next,
  });
  
  factory Links8.fromJson(Map<String, Object?> json) => _$Links8FromJson(json);
  
  final String? first;
  final String? last;
  final String? prev;
  final String? next;

  Map<String, Object?> toJson() => _$Links8ToJson(this);
}
