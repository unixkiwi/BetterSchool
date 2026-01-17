// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

/// The name has been replaced because it contains a keyword. Original name: `for`.
@JsonEnum()
enum StoreForLessonJournalNoteRequestForEnum {
  @JsonValue('student')
  student('student'),
  @JsonValue('guardian')
  guardian('guardian'),
  @JsonValue('teacher')
  teacher('teacher'),
  @JsonValue('management')
  management('management'),
  @JsonValue('self')
  self('self'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const StoreForLessonJournalNoteRequestForEnum(this.json);

  factory StoreForLessonJournalNoteRequestForEnum.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  @override
  String toString() => json?.toString() ?? super.toString();
  /// Returns all defined enum values excluding the $unknown value.
  static List<StoreForLessonJournalNoteRequestForEnum> get $valuesDefined => values.where((value) => value != $unknown).toList();
}
