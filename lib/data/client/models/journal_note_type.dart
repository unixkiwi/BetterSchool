// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'journal_note_type.g.dart';

@JsonSerializable()
class JournalNoteType {
  const JournalNoteType({
    required this.id,
    required this.name,
    required this.color,
    required this.defaultValue,
    required this.defaultFor,
    required this.journalNotableType,
  });
  
  factory JournalNoteType.fromJson(Map<String, Object?> json) => _$JournalNoteTypeFromJson(json);
  
  final int id;
  final String name;
  final String? color;

  /// The name has been replaced because it contains a keyword. Original name: `default`.
  @JsonKey(name: 'default')
  final int defaultValue;
  @JsonKey(name: 'default_for')
  final String defaultFor;
  @JsonKey(name: 'journal_notable_type')
  final String journalNotableType;

  Map<String, Object?> toJson() => _$JournalNoteTypeToJson(this);
}
