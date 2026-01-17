// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'school.g.dart';

@JsonSerializable()
class School {
  const School({
    required this.id,
    required this.customer,
    required this.name,
    required this.email,
    required this.type,
    required this.street,
    required this.streetNr,
    required this.postalCode,
    required this.city,
    required this.state,
    required this.logoUrl,
    required this.modules,
    this.postalSecondLine,
  });
  
  factory School.fromJson(Map<String, Object?> json) => _$SchoolFromJson(json);
  
  final int id;
  final bool customer;
  final String name;
  final String email;
  final String? type;
  @JsonKey(name: 'postal_second_line')
  final String? postalSecondLine;
  final String street;
  @JsonKey(name: 'street_nr')
  final String streetNr;
  @JsonKey(name: 'postal_code')
  final String postalCode;
  final String city;
  final String state;
  @JsonKey(name: 'logo_url')
  final String logoUrl;
  final List<dynamic> modules;

  Map<String, Object?> toJson() => _$SchoolToJson(this);
}
