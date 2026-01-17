// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'room.dart';
import 'meta104.dart';

part 'get_rooms_id_response.g.dart';

@JsonSerializable()
class GetRoomsIdResponse {
  const GetRoomsIdResponse({
    required this.data,
    required this.meta,
  });
  
  factory GetRoomsIdResponse.fromJson(Map<String, Object?> json) => _$GetRoomsIdResponseFromJson(json);
  
  final Room data;
  final Meta104 meta;

  Map<String, Object?> toJson() => _$GetRoomsIdResponseToJson(this);
}
