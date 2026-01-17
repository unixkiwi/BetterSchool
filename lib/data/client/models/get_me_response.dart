// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'user.dart';
import 'meta153.dart';

part 'get_me_response.g.dart';

@JsonSerializable()
class GetMeResponse {
  const GetMeResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetMeResponse.fromJson(Map<String, Object?> json) => _$GetMeResponseFromJson(json);
  
  final User data;
  final Meta153 meta;

  Map<String, Object?> toJson() => _$GetMeResponseToJson(this);
}
