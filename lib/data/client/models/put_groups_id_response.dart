// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'group.dart';
import 'meta48.dart';

part 'put_groups_id_response.g.dart';

@JsonSerializable()
class PutGroupsIdResponse {
  const PutGroupsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutGroupsIdResponse.fromJson(Map<String, Object?> json) => _$PutGroupsIdResponseFromJson(json);
  
  final Group data;
  final Meta48 meta;

  Map<String, Object?> toJson() => _$PutGroupsIdResponseToJson(this);
}
