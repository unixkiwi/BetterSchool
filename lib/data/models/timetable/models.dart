import 'package:betterschool/data/models/core/models.dart';
import 'package:betterschool/domain/models/lesson.dart';
import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

String fromJsonNR(dynamic value) => value.toString();
String? toJsonNR(String? value) => value;

@JsonSerializable()
class SchoolWeekModel {
  @JsonKey(fromJson: fromJsonNR, toJson: toJsonNR)
  String? nr;
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
  final GroupModel group;
  final List<NoteModel> notes;

  LessonModel({
    required this.id,
    required this.nr,
    required this.status,
    required this.subject,
    required this.rooms,
    required this.teachers,
    required this.group,
    required this.notes,
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
class NoteModelType {
  final String? name;
  final int? id;

  NoteModelType({required this.name, required this.id});

  factory NoteModelType.fromJson(Map<String, dynamic> json) =>
      _$NoteModelTypeFromJson(json);

  Map<String, dynamic> toJson() => _$NoteModelTypeToJson(this);
}

@JsonSerializable()
class NoteModel {
  final String? description;
  final NoteModelType? type;

  NoteModel({required this.description, required this.type});

  factory NoteModel.fromJson(Map<String, dynamic> json) =>
      _$NoteModelFromJson(json);

  Map<String, dynamic> toJson() => _$NoteModelToJson(this);
}
