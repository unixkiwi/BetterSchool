// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'data2.dart';

part 'get_status_response.g.dart';

@JsonSerializable()
class GetStatusResponse {
  const GetStatusResponse({
    required this.data,
  });
  
  factory GetStatusResponse.fromJson(Map<String, Object?> json) => _$GetStatusResponseFromJson(json);
  
  final Data2 data;

  Map<String, Object?> toJson() => _$GetStatusResponseToJson(this);
}
