// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'store_subject_request_for_enum.dart';

part 'store_subject_request.g.dart';

@JsonSerializable()
class StoreSubjectRequest {
  const StoreSubjectRequest({
    required this.name,
    required this.localId,
    required this.forEnum,
    this.tagIds,
  });
  
  factory StoreSubjectRequest.fromJson(Map<String, Object?> json) => _$StoreSubjectRequestFromJson(json);
  
  final String name;
  @JsonKey(name: 'local_id')
  final String localId;

  /// The name has been replaced because it contains a keyword. Original name: `for`.
  @JsonKey(name: 'for')
  final StoreSubjectRequestForEnum forEnum;
  @JsonKey(name: 'tag_ids')
  final List<int>? tagIds;

  Map<String, Object?> toJson() => _$StoreSubjectRequestToJson(this);
}
