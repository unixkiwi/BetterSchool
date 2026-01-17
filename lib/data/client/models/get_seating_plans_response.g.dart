// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_seating_plans_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSeatingPlansResponse _$GetSeatingPlansResponseFromJson(
  Map<String, dynamic> json,
) => GetSeatingPlansResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => SeatingPlan.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetSeatingPlansResponseToJson(
  GetSeatingPlansResponse instance,
) => <String, dynamic>{'data': instance.data};
