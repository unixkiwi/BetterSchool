// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'array_collection.dart';
import 'journal_day_student.dart';
import 'meta82.dart';


part 'get_journal_day_student_response_sealed.g.dart';

@JsonSerializable(createFactory: false)
sealed class GetJournalDayStudentResponseSealed {
  const GetJournalDayStudentResponseSealed();
  
  factory GetJournalDayStudentResponseSealed.fromJson(Map<String, dynamic> json) =>
      GetJournalDayStudentResponseSealedDeserializer.tryDeserialize(json);
  
  Map<String, dynamic> toJson();
}

extension GetJournalDayStudentResponseSealedDeserializer on GetJournalDayStudentResponseSealed {
  static GetJournalDayStudentResponseSealed tryDeserialize(Map<String, dynamic> json) {
    try {
      return GetJournalDayStudentResponseSealedVariant1.fromJson(json);
    } catch (_) {}
    try {
      return GetJournalDayStudentResponseSealedVariant2.fromJson(json);
    } catch (_) {}


    throw FormatException('Could not determine the correct type for GetJournalDayStudentResponseSealed from: $json');
  }
}

@JsonSerializable()
class GetJournalDayStudentResponseSealedVariant1 extends GetJournalDayStudentResponseSealed {
  @override
  final List<JournalDayStudent> data;

  const GetJournalDayStudentResponseSealedVariant1({
    required this.data,
  });
  
  factory GetJournalDayStudentResponseSealedVariant1.fromJson(Map<String, dynamic> json) =>
      _$GetJournalDayStudentResponseSealedVariant1FromJson(json);
      
  @override
  Map<String, dynamic> toJson() => _$GetJournalDayStudentResponseSealedVariant1ToJson(this);
}
@JsonSerializable()
class GetJournalDayStudentResponseSealedVariant2 extends GetJournalDayStudentResponseSealed {
  @override
  final ArrayCollection data;
  @override
  final Meta82 meta;

  const GetJournalDayStudentResponseSealedVariant2({
    required this.data,
    required this.meta,
  });
  
  factory GetJournalDayStudentResponseSealedVariant2.fromJson(Map<String, dynamic> json) =>
      _$GetJournalDayStudentResponseSealedVariant2FromJson(json);
      
  @override
  Map<String, dynamic> toJson() => _$GetJournalDayStudentResponseSealedVariant2ToJson(this);
}
