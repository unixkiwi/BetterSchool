import 'package:betterschool/domain/models/lesson.dart';
import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class SchoolWeekModel {
  int nr;
  List<SchoolDayModel>? days;

  SchoolWeekModel({required this.days, required this.nr});

  factory SchoolWeekModel.fromJson(Map<String, dynamic> json) =>
      _$SchoolWeekModelFromJson(json);

  Map<String, dynamic> toJson() => _$SchoolWeekModelToJson(this);
}

@JsonSerializable()
class SchoolDayModel {
  final String? id;
  final DateTime? date;
  final List<LessonModel>? lessons;

  SchoolDayModel({required this.id, required this.date, required this.lessons});

  factory SchoolDayModel.fromJson(Map<String, dynamic> json) =>
      _$SchoolDayModelFromJson(json);

  Map<String, dynamic> toJson() => _$SchoolDayModelToJson(this);
}

@JsonSerializable()
class LessonModel {
  final int? id;
  final int? nr;
  final LessonStatus? status;
  final SubjectModel? subject;
  final List<RoomModel>? rooms;
  final List<TeacherModel>? teachers;

  LessonModel({
    required this.id,
    required this.nr,
    required this.status,
    required this.subject,
    required this.rooms,
    required this.teachers,
  });

  factory LessonModel.fromJson(Map<String, dynamic> json) =>
      _$LessonModelFromJson(json);

  Map<String, dynamic> toJson() => _$LessonModelToJson(this);
}

@JsonSerializable()
class SubjectModel {
  final int? id;
  final String? local_id;
  final String? name;

  SubjectModel({required this.id, required this.local_id, required this.name});

  factory SubjectModel.fromJson(Map<String, dynamic> json) =>
      _$SubjectModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubjectModelToJson(this);
}

@JsonSerializable()
class RoomModel {
  final String? local_id;

  RoomModel({required this.local_id});

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);
  Map<String, dynamic> toJson() => _$RoomModelToJson(this);
}

@JsonSerializable()
class TeacherModel {
  final int? id;
  final String? local_id;
  final String? forename;
  final String? name;

  const TeacherModel({
    required this.id,
    required this.local_id,
    required this.forename,
    required this.name,
  });

  factory TeacherModel.fromJson(Map<String, dynamic> json) =>
      _$TeacherModelFromJson(json);
  Map<String, dynamic> toJson() => _$TeacherModelToJson(this);
}
