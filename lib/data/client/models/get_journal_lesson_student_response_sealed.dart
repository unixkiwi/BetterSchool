// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'array_collection.dart';
import 'journal_lesson_student.dart';
import 'meta91.dart';


part 'get_journal_lesson_student_response_sealed.g.dart';

@JsonSerializable(createFactory: false)
sealed class GetJournalLessonStudentResponseSealed {
  const GetJournalLessonStudentResponseSealed();
  
  factory GetJournalLessonStudentResponseSealed.fromJson(Map<String, dynamic> json) =>
      GetJournalLessonStudentResponseSealedDeserializer.tryDeserialize(json);
  
  Map<String, dynamic> toJson();
}

extension GetJournalLessonStudentResponseSealedDeserializer on GetJournalLessonStudentResponseSealed {
  static GetJournalLessonStudentResponseSealed tryDeserialize(Map<String, dynamic> json) {
    try {
      return GetJournalLessonStudentResponseSealedVariant1.fromJson(json);
    } catch (_) {}
    try {
      return GetJournalLessonStudentResponseSealedVariant2.fromJson(json);
    } catch (_) {}


    throw FormatException('Could not determine the correct type for GetJournalLessonStudentResponseSealed from: $json');
  }
}

@JsonSerializable()
class GetJournalLessonStudentResponseSealedVariant1 extends GetJournalLessonStudentResponseSealed {
  @override
  final List<JournalLessonStudent> data;

  const GetJournalLessonStudentResponseSealedVariant1({
    required this.data,
  });
  
  factory GetJournalLessonStudentResponseSealedVariant1.fromJson(Map<String, dynamic> json) =>
      _$GetJournalLessonStudentResponseSealedVariant1FromJson(json);
      
  @override
  Map<String, dynamic> toJson() => _$GetJournalLessonStudentResponseSealedVariant1ToJson(this);
}
@JsonSerializable()
class GetJournalLessonStudentResponseSealedVariant2 extends GetJournalLessonStudentResponseSealed {
  @override
  final ArrayCollection data;
  @override
  final Meta91 meta;

  const GetJournalLessonStudentResponseSealedVariant2({
    required this.data,
    required this.meta,
  });
  
  factory GetJournalLessonStudentResponseSealedVariant2.fromJson(Map<String, dynamic> json) =>
      _$GetJournalLessonStudentResponseSealedVariant2FromJson(json);
      
  @override
  Map<String, dynamic> toJson() => _$GetJournalLessonStudentResponseSealedVariant2ToJson(this);
}
