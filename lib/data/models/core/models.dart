import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BesteSchuleApiResponse<T> {
  final T? data;

  BesteSchuleApiResponse({required this.data});

  factory BesteSchuleApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$BesteSchuleApiResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BesteSchuleApiResponseToJson(this, toJsonT);
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

@JsonSerializable()
class GroupModel {
  final String? name;
  final String? local_id;
  final int? meta;

  GroupModel({required this.name, required this.local_id, required this.meta});

  factory GroupModel.fromJson(Map<String, dynamic> json) =>
      _$GroupModelFromJson(json);
  Map<String, dynamic> toJson() => _$GroupModelToJson(this);
}