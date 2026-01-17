// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'guardian.dart';

part 'get_guardians_response.g.dart';

@JsonSerializable()
class GetGuardiansResponse {
  const GetGuardiansResponse({
    required this.data,
  });
  
  factory GetGuardiansResponse.fromJson(Map<String, Object?> json) => _$GetGuardiansResponseFromJson(json);
  
  final List<Guardian> data;

  Map<String, Object?> toJson() => _$GetGuardiansResponseToJson(this);
}
