// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_year_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateYearRequest _$UpdateYearRequestFromJson(Map<String, dynamic> json) =>
    UpdateYearRequest(
      name: json['name'] as String,
      from: DateTime.parse(json['from'] as String),
      to: DateTime.parse(json['to'] as String),
    );

Map<String, dynamic> _$UpdateYearRequestToJson(UpdateYearRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'from': instance.from.toIso8601String(),
      'to': instance.to.toIso8601String(),
    };
