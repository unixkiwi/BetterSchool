// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'filter_result.g.dart';

@JsonSerializable()
class FilterResult {
  const FilterResult({
    this.group,
    this.student,
    this.interval,
    this.subject,
    this.teacher,
    this.room,
    this.lessThanOrEqual,
    this.greaterThanOrEqual,
    this.calculatedLessThanOrEqual,
    this.calculatedGreaterThanOrEqual,
    this.lesson,
    this.nr,
    this.hasNotes,
    this.hasStatuses,
    this.tooEarly,
    this.tooLate,
    this.missingHomework,
    this.missingEquipment,
    this.valueSet,
    this.status,
    this.statusNot,
    this.level,
    this.present,
    this.collectionType,
    this.notableType,
    this.type,
    this.withoutJournal,
    this.complete,
    this.verified,
    this.hasAbsence,
    this.hasVerifiedAbsence,
    this.hasUnverifiedAbsence,
  });
  
  factory FilterResult.fromJson(Map<String, Object?> json) => _$FilterResultFromJson(json);
  
  final String? group;
  final String? student;
  final String? interval;
  final String? subject;
  final String? teacher;
  final String? room;
  final String? lessThanOrEqual;
  final String? greaterThanOrEqual;
  final String? calculatedLessThanOrEqual;
  final String? calculatedGreaterThanOrEqual;
  final String? lesson;
  final String? nr;
  final String? hasNotes;
  final String? hasStatuses;
  final String? tooEarly;
  final String? tooLate;
  final String? missingHomework;
  final String? missingEquipment;
  final String? valueSet;
  final String? status;
  final String? statusNot;
  final String? level;
  final String? present;
  final String? collectionType;
  final String? notableType;
  final String? type;
  final String? withoutJournal;
  final String? complete;
  final String? verified;
  final String? hasAbsence;
  final String? hasVerifiedAbsence;
  final String? hasUnverifiedAbsence;

  Map<String, Object?> toJson() => _$FilterResultToJson(this);
}
