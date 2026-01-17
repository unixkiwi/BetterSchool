// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'update_year_request.g.dart';

@JsonSerializable()
class UpdateYearRequest {
  const UpdateYearRequest({
    required this.name,
    required this.from,
    required this.to,
  });
  
  factory UpdateYearRequest.fromJson(Map<String, Object?> json) => _$UpdateYearRequestFromJson(json);
  
  final String name;
  final DateTime from;
  final DateTime to;

  Map<String, Object?> toJson() => _$UpdateYearRequestToJson(this);
}
