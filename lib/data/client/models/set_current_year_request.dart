// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'set_current_year_request.g.dart';

@JsonSerializable()
class SetCurrentYearRequest {
  const SetCurrentYearRequest({
    this.id,
  });
  
  factory SetCurrentYearRequest.fromJson(Map<String, Object?> json) => _$SetCurrentYearRequestFromJson(json);
  
  final int? id;

  Map<String, Object?> toJson() => _$SetCurrentYearRequestToJson(this);
}
