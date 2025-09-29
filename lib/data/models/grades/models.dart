import 'package:betterschool/data/models/core/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class GradeModel {
  final String value;
  @JsonKey(name: 'given_at')
  final DateTime givenAt;
  final GradeCollectionModel collection;

  GradeModel({
    required this.value,
    required this.givenAt,
    required this.collection,
  });

  factory GradeModel.fromJson(Map<String, dynamic> json) =>
      _$GradeModelFromJson(json);

  Map<String, dynamic> toJson() => _$GradeModelToJson(this);
}

@JsonSerializable()
class GradeCollectionModel {
  final String type;
  final String name;
  @JsonKey(name: 'interval_id')
  final int intervalId;
  final SubjectModel subject;

  GradeCollectionModel({
    required this.type,
    required this.name,
    required this.intervalId,
    required this.subject,
  });

  factory GradeCollectionModel.fromJson(Map<String, dynamic> json) =>
      _$GradeCollectionModelFromJson(json);

  Map<String, dynamic> toJson() => _$GradeCollectionModelToJson(this);
}
