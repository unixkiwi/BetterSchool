// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'update_time_table_time_request.g.dart';

@JsonSerializable()
class UpdateTimeTableTimeRequest {
  const UpdateTimeTableTimeRequest({
    required this.name,
    required this.validFrom,
    required this.validTo,
    required this.defaultValue,
    this.type,
  });
  
  factory UpdateTimeTableTimeRequest.fromJson(Map<String, Object?> json) => _$UpdateTimeTableTimeRequestFromJson(json);
  
  final String name;
  final String? type;
  @JsonKey(name: 'valid_from')
  final DateTime validFrom;
  @JsonKey(name: 'valid_to')
  final DateTime validTo;

  /// The name has been replaced because it contains a keyword. Original name: `default`.
  @JsonKey(name: 'default')
  final bool defaultValue;

  Map<String, Object?> toJson() => _$UpdateTimeTableTimeRequestToJson(this);
}
