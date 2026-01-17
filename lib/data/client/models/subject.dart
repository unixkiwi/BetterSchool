// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'collection.dart';
import 'finalgrade.dart';
import 'tag.dart';
import 'teacher.dart';

part 'subject.g.dart';

@JsonSerializable()
class Subject {
  const Subject({
    required this.id,
    required this.localId,
    required this.name,
    required this.forValue,
    this.collections,
    this.groups,
    this.finalgrades,
    this.tags,
    this.teachers,
    this.collectionTypeOrder,
    this.sortByMainGroup,
    this.sortByGender,
    this.collectionLabel,
    this.groupId,
  });
  
  factory Subject.fromJson(Map<String, Object?> json) => _$SubjectFromJson(json);
  
  final int id;
  @JsonKey(name: 'local_id')
  final String localId;
  final String name;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final String forValue;
  final List<Collection>? collections;
  final List<Collection>? groups;
  final List<Finalgrade>? finalgrades;
  final List<Tag>? tags;

  /// relations
  final List<Teacher>? teachers;

  /// pivot
  @JsonKey(name: 'collection_type_order')
  final String? collectionTypeOrder;
  @JsonKey(name: 'sort_by_main_group')
  final String? sortByMainGroup;
  @JsonKey(name: 'sort_by_gender')
  final String? sortByGender;
  @JsonKey(name: 'collection_label')
  final String? collectionLabel;
  @JsonKey(name: 'group_id')
  final String? groupId;

  Map<String, Object?> toJson() => _$SubjectToJson(this);
}
