// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'for_enum.dart';

part 'note.g.dart';

@JsonSerializable()
class Note {
  const Note({
    this.description,
    this.forEnum,
    this.typeId,
  });
  
  factory Note.fromJson(Map<String, Object?> json) => _$NoteFromJson(json);
  
  final String? description;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final ForEnum? forEnum;
  @JsonKey(name: 'type_id')
  final int? typeId;

  Map<String, Object?> toJson() => _$NoteToJson(this);
}
