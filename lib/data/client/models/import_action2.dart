// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum ImportAction2 {
  @JsonValue('create')
  create('create'),
  @JsonValue('update')
  update('update'),
  @JsonValue('delete')
  delete('delete'),
  @JsonValue('auto')
  auto('auto'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const ImportAction2(this.json);

  factory ImportAction2.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  @override
  String toString() => json?.toString() ?? super.toString();
  /// Returns all defined enum values excluding the $unknown value.
  static List<ImportAction2> get $valuesDefined => values.where((value) => value != $unknown).toList();
}
