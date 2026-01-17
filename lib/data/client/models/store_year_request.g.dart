// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_year_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreYearRequest _$StoreYearRequestFromJson(Map<String, dynamic> json) =>
    StoreYearRequest(
      name: json['name'] as String,
      from: DateTime.parse(json['from'] as String),
      to: DateTime.parse(json['to'] as String),
    );

Map<String, dynamic> _$StoreYearRequestToJson(StoreYearRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'from': instance.from.toIso8601String(),
      'to': instance.to.toIso8601String(),
    };
