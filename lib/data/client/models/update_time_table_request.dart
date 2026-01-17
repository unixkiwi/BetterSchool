// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'update_time_table_request.g.dart';

@JsonSerializable()
class UpdateTimeTableRequest {
  const UpdateTimeTableRequest({
    required this.name,
    required this.validFrom,
    required this.validTo,
    this.object11,
    this.object14,
  });
  
  factory UpdateTimeTableRequest.fromJson(Map<String, Object?> json) => _$UpdateTimeTableRequestFromJson(json);
  
  final String name;
  @JsonKey(name: 'valid_from')
  final DateTime validFrom;
  @JsonKey(name: 'valid_to')
  final DateTime validTo;

  /// Incorrect name has been replaced. Original name: `weeks  `.
  /// Incorrect name has been replaced. Original name: `weeks  `.
  /// Incorrect name has been replaced. Original name: `weeks  `.
  @JsonKey(name: 'weeks  ')
  final String? object11;

  /// Incorrect name has been replaced. Original name: `no_school_dates `.
  /// Incorrect name has been replaced. Original name: `no_school_dates `.
  /// Incorrect name has been replaced. Original name: `no_school_dates `.
  @JsonKey(name: 'no_school_dates ')
  final String? object14;

  Map<String, Object?> toJson() => _$UpdateTimeTableRequestToJson(this);
}
