// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'room.dart';

part 'get_rooms_response.g.dart';

@JsonSerializable()
class GetRoomsResponse {
  const GetRoomsResponse({
    required this.data,
  });
  
  factory GetRoomsResponse.fromJson(Map<String, Object?> json) => _$GetRoomsResponseFromJson(json);
  
  final List<Room> data;

  Map<String, Object?> toJson() => _$GetRoomsResponseToJson(this);
}
