// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seating_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeatingPlan _$SeatingPlanFromJson(Map<String, dynamic> json) => SeatingPlan(
  id: (json['id'] as num).toInt(),
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  room: json['room'] == null
      ? null
      : Room.fromJson(json['room'] as Map<String, dynamic>),
  group: json['group'] == null
      ? null
      : Group.fromJson(json['group'] as Map<String, dynamic>),
  seats: (json['seats'] as List<dynamic>?)
      ?.map((e) => SeatingPlanStudent.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SeatingPlanToJson(SeatingPlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'room': instance.room,
      'group': instance.group,
      'seats': instance.seats,
    };
