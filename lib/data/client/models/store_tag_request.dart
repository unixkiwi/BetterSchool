// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'store_tag_request_for_enum.dart';

part 'store_tag_request.g.dart';

@JsonSerializable()
class StoreTagRequest {
  const StoreTagRequest({
    required this.localId,
    required this.name,
    required this.forEnum,
    required this.taggable,
    this.hideValue,
  });
  
  factory StoreTagRequest.fromJson(Map<String, Object?> json) => _$StoreTagRequestFromJson(json);
  
  @JsonKey(name: 'local_id')
  final String localId;
  final String name;

  /// The name has been replaced because it contains a keyword. Original name: `hide`.
  @JsonKey(name: 'hide')
  final bool? hideValue;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final StoreTagRequestForEnum forEnum;
  final String taggable;

  Map<String, Object?> toJson() => _$StoreTagRequestToJson(this);
}
