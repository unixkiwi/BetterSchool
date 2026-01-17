// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'store_year_request.g.dart';

@JsonSerializable()
class StoreYearRequest {
  const StoreYearRequest({
    required this.name,
    required this.from,
    required this.to,
  });
  
  factory StoreYearRequest.fromJson(Map<String, Object?> json) => _$StoreYearRequestFromJson(json);
  
  final String name;
  final DateTime from;
  final DateTime to;

  Map<String, Object?> toJson() => _$StoreYearRequestToJson(this);
}
