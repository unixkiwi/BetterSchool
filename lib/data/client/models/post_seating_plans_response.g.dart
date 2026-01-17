// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_seating_plans_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostSeatingPlansResponse _$PostSeatingPlansResponseFromJson(
  Map<String, dynamic> json,
) => PostSeatingPlansResponse(
  data: SeatingPlan.fromJson(json['data'] as Map<String, dynamic>),
  meta: Meta109.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostSeatingPlansResponseToJson(
  PostSeatingPlansResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
