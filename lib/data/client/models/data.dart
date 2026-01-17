// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  const Data({
    required this.collectionTypeOrder,
    required this.sortByMainGroup,
    required this.sortByGender,
    required this.collectionLabel,
  });
  
  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
  
  @JsonKey(name: 'collection_type_order')
  final String collectionTypeOrder;
  @JsonKey(name: 'sort_by_main_group')
  final String sortByMainGroup;
  @JsonKey(name: 'sort_by_gender')
  final String sortByGender;
  @JsonKey(name: 'collection_label')
  final String collectionLabel;

  Map<String, Object?> toJson() => _$DataToJson(this);
}
