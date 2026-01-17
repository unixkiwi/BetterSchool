// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'array_collection.dart';
import 'journal_lesson.dart';
import 'meta87.dart';


part 'get_journal_lessons_response_sealed.g.dart';

@JsonSerializable(createFactory: false)
sealed class GetJournalLessonsResponseSealed {
  const GetJournalLessonsResponseSealed();
  
  factory GetJournalLessonsResponseSealed.fromJson(Map<String, dynamic> json) =>
      GetJournalLessonsResponseSealedDeserializer.tryDeserialize(json);
  
  Map<String, dynamic> toJson();
}

extension GetJournalLessonsResponseSealedDeserializer on GetJournalLessonsResponseSealed {
  static GetJournalLessonsResponseSealed tryDeserialize(Map<String, dynamic> json) {
    try {
      return GetJournalLessonsResponseSealedVariant1.fromJson(json);
    } catch (_) {}
    try {
      return GetJournalLessonsResponseSealedVariant2.fromJson(json);
    } catch (_) {}


    throw FormatException('Could not determine the correct type for GetJournalLessonsResponseSealed from: $json');
  }
}

@JsonSerializable()
class GetJournalLessonsResponseSealedVariant1 extends GetJournalLessonsResponseSealed {
  @override
  final List<JournalLesson> data;

  const GetJournalLessonsResponseSealedVariant1({
    required this.data,
  });
  
  factory GetJournalLessonsResponseSealedVariant1.fromJson(Map<String, dynamic> json) =>
      _$GetJournalLessonsResponseSealedVariant1FromJson(json);
      
  @override
  Map<String, dynamic> toJson() => _$GetJournalLessonsResponseSealedVariant1ToJson(this);
}
@JsonSerializable()
class GetJournalLessonsResponseSealedVariant2 extends GetJournalLessonsResponseSealed {
  @override
  final ArrayCollection data;
  @override
  final Meta87 meta;

  const GetJournalLessonsResponseSealedVariant2({
    required this.data,
    required this.meta,
  });
  
  factory GetJournalLessonsResponseSealedVariant2.fromJson(Map<String, dynamic> json) =>
      _$GetJournalLessonsResponseSealedVariant2FromJson(json);
      
  @override
  Map<String, dynamic> toJson() => _$GetJournalLessonsResponseSealedVariant2ToJson(this);
}
