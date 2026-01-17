// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'room.g.dart';

@JsonSerializable()
class Room {
  const Room({
    required this.id,
    required this.localId,
  });
  
  factory Room.fromJson(Map<String, Object?> json) => _$RoomFromJson(json);
  
  final int id;
  @JsonKey(name: 'local_id')
  final String localId;

  Map<String, Object?> toJson() => _$RoomToJson(this);
}
